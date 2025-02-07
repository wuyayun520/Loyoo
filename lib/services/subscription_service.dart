import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../providers/membership_provider.dart';

class SubscriptionService {
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late Function(String) onSubscriptionSuccess;
  late Function(String) onSubscriptionError;
  bool _isInitialized = false;
  List<ProductDetails> _cachedProducts = [];

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
      throw Exception('应用内购买服务不可用');
    }

    print('In-app purchase is available for subscriptions');
    
    // 加载订阅商品列表
    _cachedProducts = await loadProducts();
    
    _isInitialized = true;
    print('Subscription service initialized successfully');
    return _cachedProducts;
  }

  Future<List<ProductDetails>> loadProducts() async {
    try {
      // 如果已经有缓存的商品列表，直接返回
      if (_cachedProducts.isNotEmpty) {
        print('Returning cached subscription products');
        return _cachedProducts;
      }

      // 订阅商品ID列表
      const Set<String> _kSubscriptionIds = <String>{
        'loyoo.weekly',
        'loyoo.monthly.com',
      };

      print('Starting to query subscription product details for: $_kSubscriptionIds');
      final ProductDetailsResponse response =
          await _inAppPurchase.queryProductDetails(_kSubscriptionIds);

      print('Subscription query completed. Found ${response.productDetails.length} products');
      print('Not found subscription products: ${response.notFoundIDs}');

      if (response.error != null) {
        print('Error loading subscription products: ${response.error}');
        throw response.error!;
      }

      // 打印每个找到的订阅商品的详细信息
      for (var product in response.productDetails) {
        print('Found subscription product: ${product.id}');
        print('  Title: ${product.title}');
        print('  Description: ${product.description}');
        print('  Price: ${product.price}');
      }

      if (response.productDetails.isEmpty) {
        print('No subscription products found!');
        throw Exception('未能加载任何订阅商品，请检查 App Store Connect 配置');
      }

      // 缓存商品列表
      _cachedProducts = response.productDetails;
      return _cachedProducts;
    } catch (e) {
      print('Failed to load subscription products: $e');
      throw Exception('加载订阅商品列表失败: $e');
    }
  }

  Future<void> purchase(ProductDetails product) async {
    try {
      print('Starting subscription purchase for: ${product.id}');
      
      // 检查购买服务是否可用
      final bool available = await _inAppPurchase.isAvailable();
      if (!available) {
        throw Exception('应用内购买服务不可用');
      }

      // 检查商品是否在缓存列表中
      if (!_cachedProducts.any((p) => p.id == product.id)) {
        print('Subscription product not in cached list, refreshing products...');
        _cachedProducts = await loadProducts();
        if (!_cachedProducts.any((p) => p.id == product.id)) {
          throw Exception('订阅商品不可用，请稍后再试');
        }
      }

      // 创建购买参数
      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: product,
      );

      print('Creating new subscription purchase request...');
      final success = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);

      print('Subscription purchase request result: $success');
      
      if (!success) {
        throw Exception('无法启动订阅流程');
      }
    } catch (e) {
      print('Subscription purchase failed: $e');
      onSubscriptionError('订阅失败: $e');
      rethrow;
    }
  }

  Future<void> handleSuccessfulPurchase(PurchaseDetails purchase, SharedPreferences prefs) async {
    try {
      print('Handling successful subscription purchase: ${purchase.productID}');
      
      // 确保只处理订阅商品
      if (!purchase.productID.startsWith('loungeplus')) {
        print('Not a subscription purchase, skipping in SubscriptionService');
        return;
      }

      // 检查是否已经处理过这个购买
      final purchaseKey = 'subscription_${purchase.purchaseID}';
      final hasProcessed = prefs.getBool(purchaseKey) ?? false;
      
      if (!hasProcessed) {
        try {
          // 更新会员状态
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
          
          // 标记这个订阅已经处理过
          await prefs.setBool(purchaseKey, true);
          
          // 调用成功回调
          onSubscriptionSuccess(purchase.productID);
          
          print('Subscription status updated successfully');
        } catch (e) {
          print('Error updating subscription status: $e');
          throw Exception('更新订阅状态失败: $e');
        }
      } else {
        print('Subscription ${purchase.purchaseID} already processed');
        // 即使已处理过，也调用成功回调以更新UI
        onSubscriptionSuccess(purchase.productID);
      }
    } catch (e) {
      print('Error handling successful subscription purchase: $e');
      onSubscriptionError('处理订阅时出错: $e');
      rethrow;
    }
  }

  void dispose() {
    _isInitialized = false;
    _cachedProducts.clear();
  }
} 