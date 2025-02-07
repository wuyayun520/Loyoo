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
      throw Exception('应用内购买服务不可用');
    }

    print('In-app purchase is available');
    
    // 加载商品列表
    _cachedProducts = await loadProducts();
    
    // 处理未完成的交易，但不等待purchaseStream
    print('Checking for pending transactions...');
    try {
      final purchaseUpdates = _inAppPurchase.purchaseStream.timeout(
        const Duration(seconds: 1),
        onTimeout: (sink) {
          print('No pending transactions found (timeout)');
          sink.close();
        },
      );
      
      await for (final purchases in purchaseUpdates) {
        for (var purchase in purchases) {
          if (purchase.pendingCompletePurchase) {
            print('Found pending purchase: ${purchase.productID}');
            // 处理未完成的购买
            await handleSuccessfulPurchase(purchase);
            await InAppPurchase.instance.completePurchase(purchase);
          }
        }
        break; // 只处理第一批购买记录
      }
    } catch (e) {
      print('No pending transactions or error checking: $e');
    }
    
    _isInitialized = true;
    print('Payment service initialized successfully');
    return _cachedProducts;
  }

  Future<List<ProductDetails>> loadProducts() async {
    try {
      // 如果已经有缓存的商品列表，直接返回
      if (_cachedProducts.isNotEmpty) {
        print('Returning cached products');
        return _cachedProducts;
      }

      // 分开定义内购和订阅商品
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

      print('Starting to query consumable product details for: $_kConsumableIds');
      final ProductDetailsResponse response =
          await _inAppPurchase.queryProductDetails(_kConsumableIds);

      print('Query completed. Found ${response.productDetails.length} products');
      print('Not found products: ${response.notFoundIDs}');

      if (response.error != null) {
        print('Error loading products: ${response.error}');
        throw response.error!;
      }

      // 打印每个找到的商品的详细信息
      for (var product in response.productDetails) {
        print('Found product: ${product.id}');
        print('  Title: ${product.title}');
        print('  Description: ${product.description}');
        print('  Price: ${product.price}');
      }

      if (response.productDetails.isEmpty) {
        print('No products found! This might be an issue with App Store Connect configuration');
        throw Exception('未能加载任何商品，请检查 App Store Connect 配置');
      }

      // 缓存商品列表
      _cachedProducts = response.productDetails;
      return _cachedProducts;
    } catch (e) {
      print('Failed to load products: $e');
      throw Exception('加载商品列表失败: $e');
    }
  }

  // 判断是否是内购ID
  bool _isInAppPurchaseId(String productId) {
    final inAppPurchaseIds = [
      'Loyoo2', 'Loyoo5', 'Loyoo9', 'Loyoo19',
      'Loyoo49', 'Loyoo99', 'Loyoo159', 'Loyoo239'
    ];
    return inAppPurchaseIds.contains(productId);
  }

  // 判断是否是订阅ID
  bool _isSubscriptionId(String productId) {
    final subscriptionIds = ['loyoo.weekly', 'loyoo.monthly.com'];
    return subscriptionIds.contains(productId);
  }

  Future<void> purchase(ProductDetails product) async {
    try {
      print('Starting purchase for: ${product.id}');
      
      // 检查购买服务是否可用
      final bool available = await _inAppPurchase.isAvailable();
      if (!available) {
        throw Exception('In-app purchase service is not available');
      }

      // 检查商品是否在缓存列表中
      if (!_cachedProducts.any((p) => p.id == product.id)) {
        print('Product not in cached list, refreshing products...');
        _cachedProducts = await loadProducts();
        if (!_cachedProducts.any((p) => p.id == product.id)) {
          throw Exception('Product is not available, please try again later');
        }
      }

      // 创建购买参数
      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: product,
      );

      print('Creating new purchase request...');
      bool success;
      
      // 根据商品类型选择购买方式
      if (_isSubscriptionId(product.id)) {
        print('Initiating subscription purchase');
        success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      } else if (_isInAppPurchaseId(product.id)) {
        print('Initiating consumable purchase for coins');
        success = await _inAppPurchase.buyConsumable(purchaseParam: purchaseParam);
      } else {
        throw Exception('Unknown product type');
      }

      print('Purchase request result: $success');
      
      if (!success) {
        throw Exception('Failed to initiate purchase process');
      }
    } catch (e) {
      print('Purchase failed: $e');
      onPurchaseError('Purchase failed: $e');
      rethrow;
    }
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    // 这里应该实现服务器端验证
    // 目前直接返回 true 用于测试
    return true;
  }

  Future<void> handleSuccessfulPurchase(PurchaseDetails purchase) async {
    try {
      print('Handling successful purchase: ${purchase.productID}');
      
      // 检查是否已经处理过这个购买
      final purchaseKey = 'purchase_${purchase.purchaseID}';
      final prefs = await SharedPreferences.getInstance();
      final hasProcessed = prefs.getBool(purchaseKey) ?? false;
      
      if (!hasProcessed) {
        // 确保是内购商品
        if (!_isInAppPurchaseId(purchase.productID)) {
          print('Not a valid in-app purchase product: ${purchase.productID}');
          return;
        }
        
        final coinAmount = _getAmountFromProductId(purchase.productID);
        print('Adding coins: $coinAmount');
        await _balanceService.addBalance(coinAmount);
        // 标记这个购买已经处理过
        await prefs.setBool(purchaseKey, true);
        onPurchaseSuccess(purchase.productID);
      } else {
        print('Purchase ${purchase.purchaseID} already processed, skipping coin addition');
      }
      
      print('Purchase handled successfully');
    } catch (e) {
      print('Error handling successful purchase: $e');
      onPurchaseError('Error processing purchase: $e');
    }
  }

  int _getAmountFromProductId(String productId) {
    switch (productId) {
      case 'Loyoo2':
        return 29;
      case 'Loyoo5':
        return 59;
      case 'Loyoo9':
        return 99;
      case 'Loyoo19':
        return 199;
      case 'Loyoo49':
        return 499;
      case 'Loyoo99':
        return 999;
      case 'Loyoo159':
        return 1599;
      case 'Loyoo239':
        return 2399;
      default:
        throw Exception('Unknown product ID: $productId');
    }
  }

  void dispose() {
    _isInitialized = false;
  }
} 