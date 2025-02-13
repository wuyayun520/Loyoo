import 'dart:async';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/apple_payment_service.dart';
import '../../models/recharge_item_model.dart';
import '../../services/balance_service.dart';

class RechargePage extends StatefulWidget {
  const RechargePage({super.key});

  @override
  State<RechargePage> createState() => _RechargePageState();
}

class _RechargePageState extends State<RechargePage> with WidgetsBindingObserver {
  // Error messages
  static const String _errorLoadingProducts = 'Failed to load product list. Please try again later';
  static const String _errorInitService = 'Failed to initialize service. Please try again later';
  static const String _errorPurchasePending = 'Purchase in progress...';
  static const String _errorPurchaseCanceled = 'Purchase canceled';
  static const String _errorPurchaseSuccess = 'Purchase successful!';
  static const String _errorProductNotFound = 'Product not found: ';
  static const String _errorPurchaseGeneral = 'Purchase failed: ';
  static const String _errorCompletePurchase = 'Error completing purchase: ';

  BalanceService? _balanceService;
  ApplePaymentService? _applePaymentService;
  List<RechargeItemModel> _rechargeItems = [];
  List<ProductDetails> _products = [];
  int _currentBalance = 0;
  int? _selectedIndex;
  bool _isLoading = true;
  String? _error;
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initServices();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _applePaymentService?.dispose();
    _subscription?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _loadBalance();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadBalance();
  }

  Future<void> _initServices() async {
    if (!mounted) return;

    try {
      setState(() {
        _isLoading = true;
      });

      final prefs = await SharedPreferences.getInstance();
      
      // Initialize BalanceService
      final balanceService = BalanceService(prefs);
      print('Initializing balance service...');
      
      // Initialize ApplePaymentService
      final applePaymentService = ApplePaymentService(prefs);
      
      if (!mounted) return;

      setState(() {
        _balanceService = balanceService;
        _applePaymentService = applePaymentService;
      });

      // Set callbacks
      _applePaymentService?.onPurchaseSuccess = (String productId) {
        print('Purchase successful: $productId');
        _loadBalance();
      };
      
      _applePaymentService?.onPurchaseError = (String error) {
        print('Purchase failed: $error');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error)),
          );
        }
      };

      // Set purchase stream listener
      _subscription = InAppPurchase.instance.purchaseStream.listen(
        _listenToPurchaseUpdated,
        onError: (error) {
          print('Purchase stream error: $error');
        },
      );

      // Load data in parallel
      try {
        await Future.wait([
          _loadBalance(),
          _initializePayment(),
          _loadData(),
        ]);
      } catch (e) {
        print('Error loading data: $e');
      }

      if (!mounted) return;
      
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      print('Failed to initialize services: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_errorInitService),
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(
              label: 'Retry',
              onPressed: () {
                _initServices();
              },
            ),
          ),
        );
      }
    }
  }

  Future<void> _loadBalance() async {
    if (_balanceService == null) {
      print('Balance service not initialized');
      return;
    }
    
    try {
      print('Loading balance...');
      final balance = await _balanceService!.getBalance();
      print('Current balance: $balance');
      if (mounted) {
        setState(() {
          _currentBalance = balance;
        });
      }
    } catch (e) {
      print('Failed to load balance: $e');
    }
  }

  Future<void> _initializePayment() async {
    try {
      print('Initializing payment for consumable products...');
      final products = await _applePaymentService?.initialize();
      if (mounted && products != null) {
        // 只保留非订阅商品
        final consumableProducts = products.where((p) => !p.id.startsWith('loungeplus')).toList();
        setState(() {
          _products = consumableProducts;
        });
      }
    } catch (e) {
      print('Failed to initialize payment: $e');
      rethrow;
    }
  }

  Future<void> _loadData() async {
    try {
      setState(() => _isLoading = true);

      print('Starting to load recharge data...');
 
      // 设置充值选项
      setState(() {
        _rechargeItems = [
          RechargeItemModel(
            coin: "96",
            price: "2.99",
            productId: "Loyoo2",
          ),
          RechargeItemModel(
            coin: "189",
            price: "5.99",
            productId: "Loyoo5",
          ),
           RechargeItemModel(
            coin: "359",
            price: "9.99",
            productId: "Loyoo9",
          ),
          RechargeItemModel(
            coin: "729",
            price: "19.99",
            productId: "Loyoo19",
          ),
          RechargeItemModel(
            coin: "1869",
            price: "49.99",
            productId: "Loyoo49",
          ),
          RechargeItemModel(
            coin: "3799",
            price: "99.99",
            productId: "Loyoo99",
          ),
           RechargeItemModel(
            coin: "5999",
            price: "159.99",
            productId: "Loyoo159",
          ),
           RechargeItemModel(
            coin: "9059",
            price: "239.99",
            productId: "Loyoo239",
          ),
          
        ];
        _isLoading = false;
      });
    } catch (e) {
      print('Loading data failed: $e');
      setState(() {
        _isLoading = false;
        _error = e.toString();
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Loading failed: $e'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Recharge'),
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await _loadBalance();
        },
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading product list...'),
          ],
        ),
      );
    }

    return _buildRechargeList();
  }

  Widget _buildRechargeList() {
    return SafeArea(
      child: Column(
        children: [
          // 余额显示
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Current Balance',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '$_currentBalance coins',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // 充值列表
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _rechargeItems.length,
              itemBuilder: (context, index) {
                final item = _rechargeItems[index];
                final isSelected = _selectedIndex == index;

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: isSelected
                          ? Colors.blue
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                        _handleRecharge(item);
                      },
                      borderRadius: BorderRadius.circular(16),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${item.coin} coins',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '\$${item.price}',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleRecharge(RechargeItemModel item) async {
    if (_applePaymentService == null) {
      print('Payment service not initialized');
      return;
    }

    try {
      print('Starting recharge process, product ID: ${item.productId}');
      
      setState(() {
        _isLoading = true;
      });

      if (_products.isEmpty) {
        print('Product list is empty, reinitializing...');
        final products = await _applePaymentService!.initialize();
        _products = products.where((p) => !p.id.startsWith('loungeplus')).toList();
      }

      print('Looking for product: ${item.productId}');
      print('Available products: ${_products.map((p) => p.id).join(', ')}');
      
      final product = _products.firstWhere(
        (p) => p.id.toLowerCase() == item.productId.toLowerCase(),
        orElse: () {
          print('Product not found: ${item.productId}');
          throw Exception('$_errorProductNotFound${item.productId}');
        },
      );

      print('Product found, initiating purchase...');
      await _applePaymentService!.purchase(product);
      print('Purchase request sent');
      
    } catch (e) {
      print('Recharge failed: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$_errorPurchaseGeneral$e'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    for (final purchaseDetails in purchaseDetailsList) {
      print('Purchase status update: ${purchaseDetails.status} for ${purchaseDetails.productID}');
      
      switch (purchaseDetails.status) {
        case PurchaseStatus.pending:
          print('Purchase pending: ${purchaseDetails.productID}');
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(_errorPurchasePending),
                duration: const Duration(seconds: 2),
              ),
            );
          }
          break;
          
        case PurchaseStatus.error:
          print('Purchase error: ${purchaseDetails.error}');
          _handleError(purchaseDetails.error);
          _completePurchase(purchaseDetails);
          break;
          
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          print('Purchase ${purchaseDetails.status}: ${purchaseDetails.productID}');
          _handleSuccessfulPurchase(purchaseDetails);
          break;
          
        case PurchaseStatus.canceled:
          print('Purchase canceled: ${purchaseDetails.productID}');
          _completePurchase(purchaseDetails);
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(_errorPurchaseCanceled),
                duration: const Duration(seconds: 2),
              ),
            );
          }
          break;
      }
    }
  }

  Future<void> _completePurchase(PurchaseDetails purchase) async {
    try {
      await InAppPurchase.instance.completePurchase(purchase);
      print('Completed purchase: ${purchase.productID}');
    } catch (e) {
      print('Error completing purchase: $e');
    }
  }

  void _handleError(IAPError? error) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$_errorPurchaseGeneral${error?.message ?? "Unknown error"}'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchase) async {
    try {
      print('Completing purchase: ${purchase.productID}');
      
      if (purchase.pendingCompletePurchase) {
        await _applePaymentService?.handleSuccessfulPurchase(purchase);
        await InAppPurchase.instance.completePurchase(purchase);
        print('Purchase completed successfully');
        
        await _loadBalance();
        
        if (mounted) {
          Navigator.of(context).pop();
          
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(_errorPurchaseSuccess),
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      }
    } catch (e) {
      print('Error completing purchase: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$_errorCompletePurchase$e'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }
} 