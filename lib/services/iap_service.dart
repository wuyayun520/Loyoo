import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';

class IAPService {
  static final IAPService _instance = IAPService._internal();
  factory IAPService() => _instance;
  IAPService._internal();

  final InAppPurchase _iap = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  List<ProductDetails> _products = [];

  static const Set<String> _productIds = {
    'com.yourapp.vip.month',
    'com.yourapp.vip.year',
    'com.yourapp.coins.100',
  };

  Future<void> initialize() async {
    final available = await _iap.isAvailable();
    if (!available) {
      print('Store not available');
      return;
    }

    _subscription = _iap.purchaseStream.listen(
      _handlePurchaseUpdates,
      onDone: () => _subscription?.cancel(),
      onError: (error) => print('IAP Error: $error'),
    );

    await loadProducts();
  }

  void _handlePurchaseUpdates(List<PurchaseDetails> purchaseDetails) {
    purchaseDetails.forEach((purchase) async {
      if (purchase.status == PurchaseStatus.purchased) {
        await _iap.completePurchase(purchase);
      }
    });
  }

  Future<List<ProductDetails>> loadProducts() async {
    try {
      final ProductDetailsResponse response = 
          await _iap.queryProductDetails(_productIds);
      
      if (response.notFoundIDs.isNotEmpty) {
        print('Products not found: ${response.notFoundIDs}');
      }

      _products = response.productDetails;
      return _products;
    } catch (e) {
      print('Failed to load products: $e');
      return [];
    }
  }

  Future<bool> buyEmojiPack() async {
    try {
      final products = await loadProducts();
      if (products.isEmpty) return false;

      final product = products.first;
      return await buyProduct(product);
    } catch (e) {
      print('Failed to buy emoji pack: $e');
      return false;
    }
  }

  Future<bool> buyProduct(ProductDetails product) async {
    try {
      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: product,
      );

      if (product.id.contains('coins')) {
        await _iap.buyConsumable(purchaseParam: purchaseParam);
      } else {
        await _iap.buyNonConsumable(purchaseParam: purchaseParam);
      }
      return true;
    } catch (e) {
      print('Purchase failed: $e');
      return false;
    }
  }

  void dispose() {
    _subscription?.cancel();
  }

  List<ProductDetails> get products => _products;
} 