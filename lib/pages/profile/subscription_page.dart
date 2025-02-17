import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/subscription_service.dart';
import '../../providers/membership_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class SubscriptionPage extends ConsumerStatefulWidget {
  const SubscriptionPage({super.key});

  @override
  ConsumerState<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends ConsumerState<SubscriptionPage> {
  // Error messages
  static const String _errorInitService = 'Failed to initialize subscription service';
  static const String _errorProductNotFound = 'Product not found: ';
  static const String _errorSubscriptionSuccess = 'Subscription successful!';
  static const String _errorSubscriptionFailed = 'Subscription Failed';
  static const String _errorSubscriptionGeneral = 'Subscription Error';

  SubscriptionService? _subscriptionService;
  bool _isLoading = true;
  int? _selectedPlanIndex;

  @override
  void initState() {
    super.initState();
    _initServices();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Refresh membership status
    ref.refresh(membershipProvider);
  }

  Future<void> _initServices() async {
    try {
      final subscriptionService = SubscriptionService();
      
      if (!mounted) return;
      
      setState(() {
        _subscriptionService = subscriptionService;
        _isLoading = false;
      });
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(_errorInitService),
            content: Text(e.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // 使用 watch 监听会员状态变化
    final membershipState = ref.watch(membershipProvider);
    
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Premium Membership'),
        elevation: 0,
      ),
      body: _buildBody(membershipState),
    );
  }

  Widget _buildBody(MembershipState membershipState) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (membershipState.isValid) 
            _buildActiveSubscriptionHeader(membershipState),
          if (!membershipState.isValid) 
            _buildHeader(),
          _buildBenefits(),
          if (!membershipState.isValid) 
            _buildSubscriptionPlans(),
          if (membershipState.isValid)
            _buildRenewalInfo(membershipState),
          _buildTerms(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.blue,
      child: const Column(
        children: [
          Icon(
            Icons.star,
            size: 48,
            color: Colors.white,
          ),
          SizedBox(height: 16),
          Text(
            'Unlock Premium Features',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Get unlimited access to all features',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBenefits() {
    final benefits = [
      {'icon': Icons.chat_bubble, 'title': 'Unlimited Chat', 'description': 'Chat without any restrictions'},
      {'icon': Icons.build, 'title': 'All Tools Access', 'description': 'Use all tools without limitations'},
      {'icon': Icons.update, 'title': 'Early Access', 'description': 'Get early access to new features'},
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Premium Benefits',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...benefits.map((benefit) => ListTile(
            leading: Icon(benefit['icon'] as IconData, color: Colors.blue),
            title: Text(benefit['title'] as String),
            subtitle: Text(benefit['description'] as String),
          )),
        ],
      ),
    );
  }

  Widget _buildSubscriptionPlans() {
    final plans = [
      {
        'title': 'Weekly',
        'price': '\$12.99/week',
        'productId': 'loyoo.weekly',
        'description': '7-day premium access',
      },
      {
        'title': 'Monthly',
        'price': '\$49.99/month',
        'productId': 'loyoo.monthly.com',
        'description': '30-day premium access',
        'popular': true,
      },
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'Choose Your Plan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...List.generate(plans.length, (index) {
            final plan = plans[index];
            final isSelected = _selectedPlanIndex == index;
            final isPopular = plan['popular'] == true;

            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Stack(
                children: [
                  Card(
                    elevation: isSelected ? 4 : 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: isSelected ? Colors.blue : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: InkWell(
                      onTap: () => setState(() => _selectedPlanIndex = index),
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  plan['title'] as String,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  plan['price'] as String,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              plan['description'] as String,
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (isPopular)
                    Positioned(
                      top: 48,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'POPULAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            );
          }),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: _selectedPlanIndex != null
                      ? () => _handleSubscribe(plans[_selectedPlanIndex!]['productId'] as String)
                      : null,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Subscribe Now',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: _handleRestorePurchases,
            child: const Text(
              'Restore Purchases',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTerms() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Subscription Services:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '1. Subscription Options:\n'
            '• Lounge plus Monthly Subscription (One Month): \$49.99/month\n'
            '• Lounge plus Weekly Subscription (7 days): \$12.99/7 days',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '2. Payment Details: Upon confirmation, charges will be billed to your iTunes account.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '3. Auto-renewal: Fees will be automatically deducted from your Apple iTunes account 24 hours before the end of the subscription period, extending the respective subscription.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '4. How to Cancel: Navigate to "Settings" > "iTunes Store and App Store" > Click on "Apple ID" to view details > Enter "Account Settings" > Manage "Subscriptions" to cancel auto-renewal.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'By subscribing, you agree to our terms of service and privacy policy.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget _buildActiveSubscriptionHeader(MembershipState membershipState) {
    final dateFormat = DateFormat('MMM dd, yyyy');
    final expiryDate = membershipState.expiryDate;
    final planType = membershipState.planType;
    
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.blue,
      child: Column(
        children: [
          const Icon(
            Icons.check_circle,
            size: 64,
            color: Colors.white,
          ),
          const SizedBox(height: 16),
          const Text(
            'Active Subscription',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Valid until ${dateFormat.format(expiryDate!)}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              planType == 'weekly' ? 'Weekly Plan' : 'Monthly Plan',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRenewalInfo(MembershipState membershipState) {
    final dateFormat = DateFormat('MMM dd, yyyy');
    final expiryDate = membershipState.expiryDate;
    
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        'Your subscription will automatically renew on ${dateFormat.format(expiryDate!)}. '
        'You can cancel or manage your subscription in your App Store settings.',
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Future<void> _handleSubscribe(String productId) async {
    try {
      setState(() => _isLoading = true);
      
      if (_subscriptionService == null) {
        throw Exception('Subscription service not initialized');
      }

      // Initialize subscription service and get product list
      final products = await _subscriptionService!.initialize();
      
      // Find the corresponding product
      final product = products.firstWhere(
        (p) => p.id == productId,
        orElse: () => throw Exception('$_errorProductNotFound$productId'),
      );

      print('Starting subscription purchase for: ${product.id}');
      
      // Set success callback
      _subscriptionService!.onSubscriptionSuccess = (String purchasedProductId) async {
        if (!mounted) return;
        
        // Refresh membership status
        ref.refresh(membershipProvider);
        
        if (!mounted) return;
        
        // Check if we can show snackbar
        if (context.mounted && Navigator.canPop(context)) {
          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(_errorSubscriptionSuccess),
              behavior: SnackBarBehavior.floating,
            ),
          );
          
          // Safely navigate back
          Navigator.of(context).pop();
        }
      };
      
      // Set error callback
      _subscriptionService!.onSubscriptionError = (String error) {
        if (!mounted) return;
        
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(_errorSubscriptionFailed),
            content: Text(error),
            actions: [
              TextButton(
                onPressed: () {
                  if (context.mounted && Navigator.canPop(context)) {
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      };

      // Initiate purchase
      await _subscriptionService!.purchase(product);
      
    } catch (e) {
      print('Subscription error: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(_errorSubscriptionGeneral),
            content: Text(e.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _handleRestorePurchases() async {
    try {
      setState(() => _isLoading = true);
      
      if (_subscriptionService == null) {
        throw Exception('Subscription service not initialized');
      }

      // 调用恢复购买
      await _subscriptionService!.restorePurchases();
      
      if (!mounted) return;

      // 刷新会员状态
      ref.refresh(membershipProvider);
      
      // 显示成功消息
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Purchases restored successfully'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Restore Failed'),
            content: Text(e.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }
} 