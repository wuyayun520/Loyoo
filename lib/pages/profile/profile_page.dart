import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'recharge_page.dart';
import '../feedback/feedback_page.dart';
import '../about/about_page.dart';
import '../../providers/balance_provider.dart';
import '../../providers/membership_provider.dart';
import '../../services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'widgets/user_info_card.dart';
import 'privacy_policy_page.dart';
import 'subscription_page.dart';
import 'package:intl/intl.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 刷新余额状态
    ref.refresh(balanceProvider.notifier);
    // 刷新会员状态
    ref.refresh(membershipProvider);
  }

  @override
  Widget build(BuildContext context) {
    final balance = ref.watch(balanceProvider);
    final membershipState = ref.watch(membershipProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const UserInfoCard(),
          const SizedBox(height: 16),
          Card(
            elevation: 0,
            child: ListTile(
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text('Balance'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RechargePage(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 0,
            child: ListTile(
              leading: const Icon(Icons.star, color: Colors.blue),
              title: const Text('Premium Membership'),
              subtitle: Text(
                membershipState.isValid 
                    ? 'Valid until ${DateFormat('MMM dd, yyyy').format(membershipState.expiryDate!)}'
                    : 'Unlock all features',
              ),
              trailing: membershipState.isValid
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        membershipState.planType == 'weekly' ? 'Weekly Plan' : 'Monthly Plan',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SubscriptionPage()),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 0,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.help_outline),
                  title: const Text('Help & Feedback'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FeedbackPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: const Text('About'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip_outlined),
                  title: const Text('Privacy Policy'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PrivacyPolicyPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 