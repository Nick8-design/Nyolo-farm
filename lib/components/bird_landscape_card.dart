import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/bird_model.dart';
import '../providers.dart';

class HotLandscapeCard extends ConsumerWidget {
  final Bird hotData;
  final Function() onTap;

  const HotLandscapeCard({
    super.key,
    required this.hotData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);
    final isFavorited = favorites.contains(hotData.id);

    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Stack(
                  fit: StackFit.expand,
                  children: [

                    Image.asset(
                      hotData.imgurl,
                      fit: BoxFit.fill,
                    ),



                    Positioned(
                      top: 4.0,
                      right: 4.0,
                      child: IconButton(
                        icon: Icon(
                          isFavorited ? Icons.favorite : Icons.favorite_border,
                        ),
                        iconSize: 30.0,
                        color: isFavorited ? Colors.red[400] : Colors.grey,
                        onPressed: () {
                          // Toggle the favorite state
                          ref.read(favoritesProvider.notifier).toggleFavorite(hotData.id);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(hotData.name,overflow: TextOverflow.ellipsis,maxLines: 1,),
              subtitle:  Text('Ksh ${hotData.price}'),
            ),
          ],
        ),
      ),
    );
  }
}
