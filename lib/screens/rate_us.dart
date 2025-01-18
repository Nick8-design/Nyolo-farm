import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this package to your pubspec.yaml

class RateUsPage extends StatelessWidget {
  const RateUsPage({super.key});

  // Replace with your app's Play Store link
  final String playStoreUrl =
      'https://play.google.com/store/apps/details?id=com.yourcompany.yourapp';

  Future<void> _launchURL(BuildContext context) async {
    if (await canLaunch(playStoreUrl)) {
      await launch(playStoreUrl);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open the Play Store link.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Enjoying our app?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'We would love to hear your feedback! Please rate us on the Play Store to help us improve and grow.',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton.icon(
              onPressed: () => _launchURL(context),
              icon: const Icon(Icons.star_rate, size: 24.0),
              label: const Text('Rate Us on Play Store'),
              style: ElevatedButton.styleFrom(
                padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                textStyle: const TextStyle(fontSize: 18.0),
              ),
            ),
            const Spacer(),
            Text(
              'Your feedback helps us make the app better for you!',
              style: TextStyle(
                fontSize: 14.0,
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
