import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../providers/membership_provider.dart';
import 'dart:developer' as dev;

class SubscriptionService {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late Function(String) onSubscriptionSuccess;
  late Function(String) onSubscriptionError;
  bool _isInitialized = false;
  List<ProductDetails> _cachedProducts = [];

  // Error messages
  static const String _errorServiceUnavailable = 'In-app purchase service is not available';
  static const String _errorNoProducts = 'No subscription products found. Please check App Store Connect configuration';
  static const String _errorLoadProducts = 'Failed to load subscription products';
  static const String _errorProductUnavailable = 'Subscription product is not available';
  static const String _errorInitPurchase = 'Failed to initiate subscription process';

  SubscriptionService() {
    onSubscriptionSuccess = (String productId) {
      print('Default subscription success handler: $productId');
    };
    onSubscriptionError = (String error) {
      print('Default subscription error handler: $error');
    };
  }

  Future<List<ProductDetails>> initialize() async {
    if (_isInitialized && _cachedProducts.isNotEmpty) {
      print('Subscription service already initialized, returning cached products');
      return _cachedProducts;
    }

    print('Initializing subscription service...');
    final bool available = await _inAppPurchase.isAvailable();
    if (!available) {
      print('In-app purchase not available');
      throw Exception(_errorServiceUnavailable);
    }

    print('In-app purchase is available for subscriptions');
    
    // Load subscription products
    _cachedProducts = await loadProducts();
    
    _isInitialized = true;
    print('Subscription service initialized successfully');
    return _cachedProducts;
  }

  Future<List<ProductDetails>> loadProducts() async {
    try {
      if (_cachedProducts.isNotEmpty) {
        print('Returning cached subscription products');
        return _cachedProducts;
      }

      // Subscription product IDs
      const Set<String> _kSubscriptionIds = <String>{
        'loyoo.weekly',
        'loyoo.monthly.com',
      };

      print('Starting to query subscription product details for: $_kSubscriptionIds');
      final ProductDetailsResponse response =
          await _inAppPurchase.queryProductDetails(_kSubscriptionIds);

      print('Subscription query completed. Found ${response.productDetails.length} products');
      if (response.notFoundIDs.isNotEmpty) {
        print('Products not found: ${response.notFoundIDs}');
      }

      if (response.error != null) {
        print('Error loading subscription products: ${response.error}');
        throw response.error!;
      }

      for (var product in response.productDetails) {
        print('Found subscription product: ${product.id}');
        print('  Title: ${product.title}');
        print('  Description: ${product.description}');
        print('  Price: ${product.price}');
      }

      if (response.productDetails.isEmpty) {
        print('No subscription products found!');
        throw Exception(_errorNoProducts);
      }

      _cachedProducts = response.productDetails;
      return _cachedProducts;
    } catch (e) {
      print('Failed to load subscription products: $e');
      throw Exception('$_errorLoadProducts: $e');
    }
  }

  Future<void> purchase(ProductDetails product) async {
    try {
      print('Starting subscription purchase for: ${product.id}');
      
      final bool available = await _inAppPurchase.isAvailable();
      if (!available) {
        throw Exception(_errorServiceUnavailable);
      }

      if (!_cachedProducts.any((p) => p.id == product.id)) {
        print('Subscription product not in cached list, refreshing products...');
        _cachedProducts = await loadProducts();
        if (!_cachedProducts.any((p) => p.id == product.id)) {
          throw Exception(_errorProductUnavailable);
        }
      }

      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: product,
      );

      print('Creating new subscription purchase request...');
      final success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);

      print('Subscription purchase request result: $success');
      
      if (!success) {
        throw Exception(_errorInitPurchase);
      }
    } catch (e) {
      print('Subscription purchase failed: $e');
      onSubscriptionError('Subscription failed: $e');
      rethrow;
    }
  }

  // New method to handle purchase completion in background
  Future<void> _completePurchaseInBackground(PurchaseDetails purchase) async {
    if (purchase.pendingCompletePurchase) {
      print('Starting background completion for subscription: ${purchase.productID}');
      try {
        // Use Future.microtask to avoid blocking UI
        await Future.microtask(() async {
          await _inAppPurchase.completePurchase(purchase);
          print('Subscription completed successfully in background: ${purchase.productID}');
        });
      } catch (e) {
        print('Error completing subscription in background: $e');
        // Don't throw the error as this is a background operation
      }
    }
  }

  Future<void> handleSuccessfulPurchase(PurchaseDetails purchase, SharedPreferences prefs) async {
    try {
      print('Handling successful subscription purchase: ${purchase.productID}');
      
      // Check if this purchase has already been processed
      final purchaseKey = 'subscription_${purchase.purchaseID}';
      final hasProcessed = prefs.getBool(purchaseKey) ?? false;
      
      if (!hasProcessed) {
        try {
          // Update membership status
          final membershipNotifier = MembershipNotifier(prefs);
          final now = DateTime.now();
          final expiryDate = purchase.productID == 'loyoo.weekly'
              ? now.add(const Duration(days: 7))
              : now.add(const Duration(days: 30));
              
          await membershipNotifier.updateSubscription(
            isSubscribed: true,
            expiryDate: expiryDate,
            planType: purchase.productID == 'loyoo.weekly' ? 'weekly' : 'monthly',
          );
          
          // Mark this subscription as processed
          await prefs.setBool(purchaseKey, true);
          
          // Call success callback
          onSubscriptionSuccess(purchase.productID);
          
          print('Subscription status updated successfully');
          
          // Complete purchase in background
          _completePurchaseInBackground(purchase);
        } catch (e) {
          print('Error updating subscription status: $e');
          throw Exception('Failed to update subscription status: $e');
        }
      } else {
        print('Subscription ${purchase.purchaseID} already processed');
        // Call success callback even if already processed to update UI
        onSubscriptionSuccess(purchase.productID);
        // Still complete purchase in background if needed
        _completePurchaseInBackground(purchase);
      }
    } catch (e) {
      print('Error handling successful subscription purchase: $e');
      onSubscriptionError('Error processing subscription: $e');
      rethrow;
    }
  }

  Future<void> restorePurchases() async {
    try {
      dev.log('Starting purchase restoration', name: 'SubscriptionService');
      
      // 恢复购买
      await _inAppPurchase.restorePurchases();
      
      dev.log('Purchase restoration completed', name: 'SubscriptionService');
    } catch (e) {
      dev.log('Error restoring purchases: $e', name: 'SubscriptionService');
      rethrow;
    }
  }

  void dispose() {
    _isInitialized = false;
    _cachedProducts.clear();
  }
} 