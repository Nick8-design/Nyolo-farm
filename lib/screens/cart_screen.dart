import 'package:birds/screens/bird_item/buy_bard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../models/bird_model.dart'; // Adjust this path
import '../providers.dart';

class CartScreen extends ConsumerWidget {
  final tab;
  const CartScreen({this.tab,super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);
    final birdList = ref.watch(birdProvider); // Assume birdProvider gives all birds

    // Filter only favorite birds
    final favoriteBirds = birdList.values.expand((birds) => birds).where((bird) {
      return cart.contains(bird.id);
    }).toList();

    return favoriteBirds.isEmpty
        ? Center(
      child: Text(
        'No birds added to cart yet!',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    )
        : ListView.builder(
      itemCount: favoriteBirds.length,
      itemBuilder: (context, index) {
        final bird = favoriteBirds[index];

        return

          Dismissible(
            key: ValueKey(bird.id),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              // Remove the bird from favorites
              ref.read(favoritesProvider.notifier).toggleFavorite(bird.id);

              // Show a snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${bird.name} removed from cart'),
                ),
              );
            },
            child:
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(bird.imgurl), // Replace with bird image
              ),
              title: Text("${bird.name} - ${bird.category} for sale", style: Theme.of(context).textTheme.bodyLarge,),
              subtitle: Text('Price: ${bird.price}'),
              onTap:(){

                context.go('/$tab/contact',extra:bird);


              },
            ),
          );

      },
    );
  }
}
