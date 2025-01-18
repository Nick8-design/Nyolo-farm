import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Introduction
            Text(
              'How to Use the App',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Welcome to the Help section! Here you can find information on how to navigate and make the most out of the app\'s features.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Navigating Using Tabs
            Text(
              'Navigating with Tabs',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'The app features a tab-based navigation system at the bottom of the screen. Here\'s how to use it:\n'
                  '- Tap on the "Home" tab to view the main dashboard.\n'
                  '- Tap on the "Favorites" tab to see your saved birds and animals.\n'
                  '- Tap on the "Profile" tab to manage your account and settings.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Sliding Right to Left to Delete
            Text(
              'Deleting Items by Sliding',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'To delete an item from a list (e.g., favorites), swipe the item from right to left. A delete action will appear. Confirm to remove the item from the list.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Adding Items to Favorites
            Text(
              'Adding Items to Favorites',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'To add an item to your favorites:\n'
                  '- Browse the available birds and animals.\n'
                  '- Tap the heart icon to mark it as a favorite.\n'
                  '- View your favorite items in the "Favorites" tab.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Searching for Birds and Animals
            Text(
              'Searching for Birds and Animals',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Use the search bar at the top of the home screen to find specific birds or animals. Type a keyword (e.g., "parrot") and view the results instantly.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Contact Support
            Text(
              'Need More Help?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'If you need additional assistance, feel free to reach out:\n'
                  '- Email: support@birdsanimalshop.com\n'
                  '- Phone: +123 456 7890\n'
                  '- Visit the "About Us" page for more details.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Tips and Tricks
            Text(
              'Tips & Tricks',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- Long press on an item for more options.\n'
                  '- Use filters to narrow down your search results.\n'
                  '- Enable notifications to get updates on new arrivals and special offers.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
