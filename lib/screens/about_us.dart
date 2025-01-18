import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Business Introduction
            Text(
              'About Our Business',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Welcome to [Client\'s Business Name]! We specialize in providing a wide variety of birds and animals to meet all your needs. Whether you are looking for exotic birds, domestic birds, or animals, we are your one-stop shop for quality and care.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Types of Birds and Animals
            Text(
              'What We Offer',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '- Exotic Birds: Parrots, Macaws, Cockatiels, and more.\n'
                  '- Domestic Birds: Chickens, Ducks, Pigeons.\n'
                  '- Animals: Rabbits, Guinea Pigs, and more.\n'
                  '- Accessories: Bird cages, feed, and grooming products.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Mission Statement
            Text(
              'Our Mission',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Our mission is to provide healthy and well-cared-for birds and animals while ensuring the best customer service. We strive to make every purchase a delightful experience for our customers.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Business Contact Details
            Text(
              'Contact Us',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Phone: +123 456 7890\n'
                  'Email: contact@birdsanimalshop.com\n'
                  'Address: 123 Main Street, Animal City, AC 98765',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),

            // Developers' Details
            Text(
              'About the Developers',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'This app was developed by Nick Dieda Dieda, a dedicated  developer passionate about creating user-friendly and efficient mobile applications. We aim to deliver solutions that meet our clients\' needs and exceed their expectations.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Developer Contact:\n'
                  'Email: comb01-048722022@student.mmust.ac.ke\n'
                  'or nickeagle888@gmail.com'
                  'Phone: +254700742362\n'
                 ,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
