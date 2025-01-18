import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Terms and Conditions',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),

            // Introduction
            const Text(
              'Welcome to our app! Before using our services, please read the following terms and conditions carefully. By accessing or using the app, you agree to be bound by these terms.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Section 1
            Text(
              '1. General Usage',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'You must use the app responsibly and comply with all applicable laws. Any misuse of the app, including but not limited to fraudulent activity, unauthorized access, or disruption of the app’s functionality, is strictly prohibited.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Section 2
            Text(
              '2. Purchases and Payments',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'All purchases made through the app are subject to our pricing and payment policies. Ensure that your payment information is accurate and up to date. Refunds are processed according to our refund policy.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Section 3
            Text(
              '3. Privacy Policy',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and protect your personal information.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Section 4
            Text(
              '4. User Responsibilities',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'You are responsible for maintaining the confidentiality of your account details. Any activity conducted through your account will be deemed your responsibility.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Section 5
            Text(
              '5. Limitation of Liability',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'We are not liable for any damages resulting from your use of the app. This includes, but is not limited to, loss of data, unauthorized access, or downtime.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Section 6
            Text(
              '6. Changes to Terms',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'We reserve the right to modify these terms at any time. Any changes will be communicated through the app, and your continued use of the app constitutes acceptance of the updated terms.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Closing Statement
            const Text(
              'If you have any questions or concerns about these terms, feel free to contact us at support@birdsanimalshop.com.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),

            // Acknowledgment
            Text(
              'Acknowledgment',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'By using this app, you acknowledge that you have read, understood, and agree to these terms and conditions.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
