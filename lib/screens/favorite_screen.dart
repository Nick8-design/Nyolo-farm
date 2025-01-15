import 'package:birds/models/bird_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class FavoriteScreen extends ConsumerWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);

    return Center(
      child: Text(
        'Favourite birds are ${favorites.length}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
