import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'models/bird_model.dart';


// BirdProvider converted to a StateNotifier
class BirdNotifier extends StateNotifier<Map<String, List<Bird>>> {
  BirdNotifier() : super({}){
    _initializeBirds();
  }

  final List<Bird> _birds = birdList;
  String _searchQuery = '';

  void setSearchQuery(String query) {
    _searchQuery = query.toLowerCase();
    _filterBirds();
  }

  void _initializeBirds() {
    state = _birds.fold({}, (Map<String, List<Bird>> map, Bird bird) {
      map.putIfAbsent(bird.category, () => []).add(bird);
      return map;
    });
  }


  void _filterBirds() {
    if (_searchQuery.isEmpty) {
      _initializeBirds();
      return;
    }

    final filteredBirds = _birds
        .where((bird) =>
    bird.name.toLowerCase().contains(_searchQuery) ||
        bird.category.toLowerCase().contains(_searchQuery))
        .toList();

    state = filteredBirds.fold({}, (Map<String, List<Bird>> map, Bird bird) {
      map.putIfAbsent(bird.category, () => []).add(bird);
      return map;
    });
  }
}

// Riverpod provider for BirdNotifier
final birdProvider = StateNotifierProvider<BirdNotifier, Map<String, List<Bird>>>(
      (ref) => BirdNotifier(),
);


final sharedPrefProvider = Provider<SharedPreferences>((ref){
  throw UnimplementedError();
});


final favoritesProvider = StateNotifierProvider<FavoritesNotifier, Set<String>>(
      (ref) => FavoritesNotifier(),
);

final cartProvider = StateNotifierProvider<CartNotifier, Set<String>>(
      (ref) => CartNotifier(),
);



const String prefsFavoriteKey = 'fav';
const String prefsCartKey = 'cart';



class CartNotifier extends StateNotifier<Set<String>> {
  CartNotifier() : super({}) {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final storedFavorites = prefs.getStringList(prefsCartKey) ?? [];
    state = storedFavorites.toSet();
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(prefsCartKey, state.toList());
  }

  void toggleFavorite(String birdId) {
    if (state.contains(birdId)) {
      state = {...state}..remove(birdId);
    } else {
      state = {...state}..add(birdId);
    }
    _saveFavorites();
  }

  void remove(String birdId){
    if (state.contains(birdId)) {
      state = {...state}..remove(birdId);
    }
    _saveFavorites();
  }



}

class FavoritesNotifier extends StateNotifier<Set<String>> {
  FavoritesNotifier() : super({}) {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final storedFavorites = prefs.getStringList(prefsFavoriteKey) ?? [];
    state = storedFavorites.toSet();
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(prefsFavoriteKey, state.toList());
  }

  void toggleFavorite(String birdId) {
    if (state.contains(birdId)) {
      state = {...state}..remove(birdId);
    } else {
      state = {...state}..add(birdId);
    }
    _saveFavorites();
  }

  void remove(String birdId){
    if (state.contains(birdId)) {
      state = {...state}..remove(birdId);
    }
    _saveFavorites();
  }



}

