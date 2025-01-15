import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/bird_landscape_card.dart';
import '../../models/bird_model.dart';
import '../../main.dart';
import '../../providers.dart'; // Adjust the import to where your birdProvider is defined

class BirdListScreen extends ConsumerStatefulWidget {
  final  tab;

   const BirdListScreen({super.key,  this.tab});


  @override
  ConsumerState<BirdListScreen> createState() => _StateBirdListScreen();
}



class _StateBirdListScreen extends ConsumerState<BirdListScreen> {

  static const String prefsFavorite = 'fav';

  Set<String> favBird={};
  final _searchController=TextEditingController();


  @override
  void initState() {
    super.initState();
    _loadFav();

  }




  void _loadFav() async {
    final prefs = ref.read(sharedPrefProvider);
    setState(() {
      favBird=prefs.getStringList(prefsFavorite)?.toSet()??{};
    });
  }





  @override
  Widget build(BuildContext context) {
    final birdNotifier = ref.read(birdProvider.notifier);
    final groupedBirds = ref.watch(birdProvider);
    double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount = screenWidth < 300 ? 2 : 1;

    return Column(
      children: [
        // Search Area
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Search by name or category',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onChanged: (value) {
              birdNotifier.setSearchQuery(value);
            },
            controller: _searchController,
          ),
        ),
        // Categorized GridView
        Expanded(
          child: groupedBirds.isEmpty
              ? const Center(
            child: Text('No birds found.'),
          )
              : ListView(
            children: groupedBirds.keys.map((category) {
              final birds = groupedBirds[category]!;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child:
                    ListTile(
                      leading:  Text(
                        category,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _searchController.text=category;
                            birdNotifier.setSearchQuery(category);
                          });

                        },
                        child: const Text('All'),
                      ),
                    )

                  ),
                  SizedBox(
                    height: 250,
                    child: GridView.builder(
                     // physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.2,
                      ),
                      itemCount: birds.length,
                      itemBuilder: (context, index) {
                        final bird = birds[index];



                        return HotLandscapeCard(
                          hotData: bird,
                          onTap: () {

                            context.go('/${widget.tab}/contact',extra:bird);




                          },

                        );




                      },
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
