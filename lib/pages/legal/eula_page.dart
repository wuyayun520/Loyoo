import 'package:flutter/material.dart';

class EULAPage extends StatelessWidget {
  const EULAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Use'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'End User License Agreement ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Last updated: February 24, 2025',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 24),
            Text(
              '1. Acceptance of Terms',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'By downloading, installing, or using this application, you agree to be bound by these terms. If you do not agree to these terms, do not use the application.',
            ),
            SizedBox(height: 16),
            Text(
              '2. Subscription Services',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '• Premium Membership includes:\n'
              '  - Weekly Plan (\$12.99/week)\n'
              '  - Monthly Plan (\$49.99/month)\n\n'
              '• Payment will be charged to your iTunes Account at confirmation of purchase.\n'
              '• Subscription automatically renews unless auto-renew is turned off at least 24-hours before the end of the current period.\n'
              '• Account will be charged for renewal within 24-hours prior to the end of the current period.\n'
              '• You can manage and cancel your subscriptions by going to your account settings on the App Store after purchase.',
            ),
            SizedBox(height: 16),
            Text(
              '3. Usage Rights',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'The application and its content are licensed, not sold, to you for use under the terms of this license.',
            ),
            SizedBox(height: 16),
            Text(
              '4. Restrictions',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'You may not:\n'
              '• Copy, modify, or create derivative works\n'
              '• Attempt to extract the source code\n'
              '• Remove any copyright or proprietary notices',
            ),
            SizedBox(height: 16),
            Text(
              '5. Privacy',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Your use of this application is also governed by our Privacy Policy.',
            ),
            SizedBox(height: 16),
            Text(
              '6. Termination',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'We reserve the right to terminate or suspend your access to the application at any time.',
            ),
            SizedBox(height: 16),
            Text(
              '7. Changes to Terms',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'We reserve the right to modify these terms at any time. Continued use of the application constitutes acceptance of modified terms.',
            ),
            SizedBox(height: 16),
            Text(
              '8. Contact Information',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'For any questions about these terms, please contact us at support@loyoo.com',
            ),
          ],
        ),
      ),
    );
  }
} 