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
import 'package:loyoo/pages/legal/eula_page.dart';

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
    // 监听会员状态
    final membershipState = ref.watch(membershipProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: _buildBody(membershipState),
    );
  }

  Widget _buildBody(MembershipState membershipState) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        _buildProfileCard(),
        const SizedBox(height: 16),
        _buildMenuSection([
          _buildMenuItem(
            icon: Icons.account_balance_wallet,
            title: 'Balance',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RechargePage()),
            ),
          ),
          _buildMenuItem(
            icon: Icons.star,
            title: 'Premium Membership',
            subtitle: membershipState.isValid
                ? 'Valid until ${DateFormat('MMM dd, yyyy').format(membershipState.expiryDate!)}'
                : 'Unlock all features',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SubscriptionPage()),
            ),
          ),
        ]),
        const SizedBox(height: 16),
        _buildMenuSection([
          _buildMenuItem(
            icon: Icons.help_outline,
            title: 'Help & Feedback',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FeedbackPage()),
            ),
          ),
          _buildMenuItem(
            icon: Icons.info_outline,
            title: 'About',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutPage()),
            ),
          ),
          _buildMenuItem(
            icon: Icons.privacy_tip_outlined,
            title: 'Privacy Policy',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PrivacyPolicyPage()),
            ),
          ),
          _buildMenuItem(
            icon: Icons.description_outlined,
            title: 'Terms of Use',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EULAPage()),
            ),
          ),
        ]),
      ],
    );
  }

  Widget _buildProfileCard() {
    return const UserInfoCard();
  }

  Widget _buildMenuSection(List<Widget> children) {
    return Column(
      children: children,
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    String? subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
} 