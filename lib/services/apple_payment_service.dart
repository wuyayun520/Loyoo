import 'dart:io' show Platform;
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/balance_service.dart';

class ApplePaymentService {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  final BalanceService _balanceService;
  late Function(String) onPurchaseSuccess;
  late Function(String) onPurchaseError;
  bool _isInitialized = false;
  List<ProductDetails> _cachedProducts = [];

  // Error messages
  static const String _errorServiceUnavailable = 'In-app purchase service is not available';
  static const String _errorProductUnavailable = 'Product is not available';
  static const String _errorUnknownProduct = 'Unknown product type';
  static const String _errorPurchaseFailed = 'Failed to initiate purchase';
  static const String _errorUnknownProductId = 'Unknown product ID';
  static const String _errorLoadProducts = 'Failed to load products';
  static const String _errorNoProducts = 'No products available';

  ApplePaymentService(SharedPreferences prefs)
      : _balanceService = BalanceService(prefs) {
    onPurchaseSuccess = (String productId) {
      print('Default purchase success handler: $productId');
    };
    onPurchaseError = (String error) {
      print('Default purchase error handler: $error');
    };
  }

  Future<List<ProductDetails>> initialize() async {
    if (_isInitialized && _cachedProducts.isNotEmpty) {
      print('Payment service already initialized, returning cached products');
      return _cachedProducts;
    }

    print('Initializing payment service...');
    final bool available = await _inAppPurchase.isAvailable();
    if (!available) {
      print('In-app purchase not available');
      throw Exception(_errorServiceUnavailable);
    }

    print('In-app purchase is available');
    
    // Load product list
    _cachedProducts = await loadProducts();
    
    // Handle pending transactions
    print('Checking for pending transactions...');
    try {
      // Listen to purchase stream
      _inAppPurchase.purchaseStream.listen(
        (List<PurchaseDetails> purchaseDetailsList) {
          _listenToPurchaseUpdated(purchaseDetailsList);
        },
        onDone: () {
          print('Purchase stream closed');
        },
        onError: (error) {
          print('Error in purchase stream: $error');
        },
      );
    } catch (e) {
      print('Error setting up purchase stream: $e');
    }
    
    _isInitialized = true;
    print('Payment service initialized successfully');
    return _cachedProducts;
  }

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        print('Purchase pending: ${purchaseDetails.productID}');
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        print('Purchase error: ${purchaseDetails.error}');
        onPurchaseError(purchaseDetails.error?.message ?? 'Unknown error occurred');
        // Move completion to background
        _completePurchaseInBackground(purchaseDetails);
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                 purchaseDetails.status == PurchaseStatus.restored) {
        print('Purchase successful/restored: ${purchaseDetails.productID}');
        // First handle the successful purchase
        await handleSuccessfulPurchase(purchaseDetails);
        // Then complete the purchase in background
        _completePurchaseInBackground(purchaseDetails);
      }
    }
  }

  // New method to handle purchase completion in background
  Future<void> _completePurchaseInBackground(PurchaseDetails purchase) async {
    if (purchase.pendingCompletePurchase) {
      print('Starting background completion for purchase: ${purchase.productID}');
      try {
        // Use Future.microtask to avoid blocking UI
        await Future.microtask(() async {
          await _inAppPurchase.completePurchase(purchase);
          print('Purchase completed successfully in background: ${purchase.productID}');
        });
      } catch (e) {
        print('Error completing purchase in background: $e');
        // Don't throw the error as this is a background operation
      }
    }
  }

  Future<List<ProductDetails>> loadProducts() async {
    try {
      if (_cachedProducts.isNotEmpty) {
        print('Returning cached products');
        return _cachedProducts;
      }

      const Set<String> _kConsumableIds = <String>{
        'Loyoo2',
        'Loyoo5',
        'Loyoo9',
        'Loyoo19',
        'Loyoo49',
        'Loyoo99',
        'Loyoo159',
        'Loyoo239',
      };

      print('Starting to query product details for: $_kConsumableIds');
      final ProductDetailsResponse response =
          await _inAppPurchase.queryProductDetails(_kConsumableIds);

      print('Query completed. Found ${response.productDetails.length} products');
      
      // Enhanced error logging
      if (response.notFoundIDs.isNotEmpty) {
        print('Products not found in App Store: ${response.notFoundIDs}');
      }

      if (response.error != null) {
        print('Detailed error info:');
        print('- Error code: ${response.error!.code}');
        print('- Error source: ${response.error!.source}');
        print('- Error message: ${response.error!.message}');
        print('- Error details: ${response.error!.details}');
        throw response.error!;
      }

      for (var product in response.productDetails) {
        print('Found product: ${product.id}');
        print('  Title: ${product.title}');
        print('  Description: ${product.description}');
        print('  Price: ${product.price}');
        print('  Raw price: ${product.rawPrice}');
        print('  Currency code: ${product.currencyCode}');
      }

      if (response.productDetails.isEmpty) {
        print('No products found! Check App Store Connect configuration');
        print('Requested products: $_kConsumableIds');
        print('Not found products: ${response.notFoundIDs}');
        throw Exception(_errorNoProducts);
      }

      _cachedProducts = response.productDetails;
      return _cachedProducts;
    } catch (e) {
      print('Failed to load products: $e');
      if (e is IAPError) {
        print('IAP Error details:');
        print('- Code: ${e.code}');
        print('- Source: ${e.source}');
        print('- Message: ${e.message}');
        print('- Details: ${e.details}');
      }
      throw Exception('$_errorLoadProducts: $e');
    }
  }

  bool _isInAppPurchaseId(String productId) {
    final inAppPurchaseIds = [
      'Loyoo2', 'Loyoo5', 'Loyoo9', 'Loyoo19',
      'Loyoo49', 'Loyoo99', 'Loyoo159', 'Loyoo239'
    ];
    return inAppPurchaseIds.contains(productId);
  }

  bool _isSubscriptionId(String productId) {
    final subscriptionIds = ['loungeplusweek_13', 'loyoo.monthly.com'];
    return subscriptionIds.contains(productId);
  }

  Future<void> purchase(ProductDetails product) async {
    try {
      print('Starting purchase for: ${product.id}');
      
      final bool available = await _inAppPurchase.isAvailable();
      if (!available) {
        throw Exception(_errorServiceUnavailable);
      }

      if (!_cachedProducts.any((p) => p.id == product.id)) {
        print('Product not in cached list, refreshing products...');
        _cachedProducts = await loadProducts();
        if (!_cachedProducts.any((p) => p.id == product.id)) {
          throw Exception(_errorProductUnavailable);
        }
      }

      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: product,
      );

      print('Creating purchase request...');
      bool success;
      
      if (_isSubscriptionId(product.id)) {
        print('Initiating subscription purchase');
        success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      } else if (_isInAppPurchaseId(product.id)) {
        print('Initiating consumable purchase');
        success = await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
      } else {
        throw Exception(_errorUnknownProduct);
      }

      print('Purchase request result: $success');
      
      if (!success) {
        throw Exception(_errorPurchaseFailed);
      }
    } catch (e) {
      print('Purchase failed: $e');
      onPurchaseError('Purchase failed: $e');
      rethrow;
    }
  }

  Future<void> handleSuccessfulPurchase(PurchaseDetails purchase) async {
    try {
      print('Handling successful purchase: ${purchase.productID}');
      
      // Check if this purchase has already been processed
      final purchaseKey = 'purchase_${purchase.purchaseID}';
      final prefs = await SharedPreferences.getInstance();
      final hasProcessed = prefs.getBool(purchaseKey) ?? false;
      
      if (!hasProcessed) {
        if (_isInAppPurchaseId(purchase.productID)) {
          final coinAmount = _getAmountFromProductId(purchase.productID);
          print('Adding coins: $coinAmount');
          await _balanceService.addBalance(coinAmount);
          await prefs.setBool(purchaseKey, true);
          onPurchaseSuccess(purchase.productID);
        } else if (_isSubscriptionId(purchase.productID)) {
          // Process subscription purchase
          print('Processing subscription purchase');
          await prefs.setBool(purchaseKey, true);
          onPurchaseSuccess(purchase.productID);
        } else {
          print('Unknown product type: ${purchase.productID}');
          return;
        }
      } else {
        print('Purchase ${purchase.purchaseID} already processed');
        onPurchaseSuccess(purchase.productID);
      }
      
      print('Purchase handled successfully');
    } catch (e) {
      print('Error handling purchase: $e');
      onPurchaseError('Error processing purchase: $e');
    }
  }

  int _getAmountFromProductId(String productId) {
    switch (productId) {
      case 'Loyoo2':
        return 96;
      case 'Loyoo5':
        return 189;
      case 'Loyoo9':
        return 359;
      case 'Loyoo19':
        return 729;
      case 'Loyoo49':
        return 1869;
      case 'Loyoo99':
        return 3799;
      case 'Loyoo159':
        return 5999;
      case 'Loyoo239':
        return 9059;
      default:
        throw Exception(_errorUnknownProductId);
    }
  }

  void dispose() {
    _isInitialized = false;
    _cachedProducts.clear();
  }
} 