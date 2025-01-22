import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Last Updated: ${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 24),
            _buildSection(
              '1. Information Collection',
              'We collect the following information:\n'
              '• Basic Information: Your username and avatar\n'
              '• Chat History: Your conversations with AI assistant\n'
              '• Usage Data: App usage frequency and patterns\n'
              '• Device Information: Device model, OS version, etc.',
            ),
            _buildSection(
              '2. Information Usage',
              'We use the collected information for:\n'
              '• Providing and improving AI chat services\n'
              '• Personalizing your experience\n'
              '• Sending service notifications and updates\n'
              '• Preventing abuse and fraud',
            ),
            _buildSection(
              '3. Information Protection',
              'We protect your information through:\n'
              '• Data encryption\n'
              '• Access control and monitoring\n'
              '• Regular security assessments\n'
              '• Staff training and management',
            ),
            _buildSection(
              '4. Information Sharing',
              'We will not sell, rent, or otherwise share your personal information with third parties, except:\n'
              '• With your explicit consent\n'
              '• When required by law\n'
              '• To protect our legitimate interests',
            ),
            _buildSection(
              '5. Your Rights',
              'You have the following rights regarding your personal information:\n'
              '• Access and view\n'
              '• Correct and update\n'
              '• Delete\n'
              '• Withdraw consent',
            ),
            _buildSection(
              '6. Policy Updates',
              'We may update this privacy policy from time to time. Updated policies will be posted in the app, and you will be notified of significant changes when necessary.',
            ),
            _buildSection(
              '7. Contact Us',
              'If you have any questions or suggestions about this privacy policy, please contact us:\n'
              '• Email: support@example.com\n'
              '• Phone: 400-533-5553X',
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
} 