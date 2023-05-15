import 'package:flutter/material.dart';
import '../models/favoriteStory.dart';

class Favorites with ChangeNotifier {
  Map<String, FavoriteStory> _items = {};

  Map<String, FavoriteStory> get items => _items;

  void addFavs(String storyId, String title, String description, String writer,
      String category, String image) {
    // ketika sudah tersedia
    if (_items.containsKey(storyId)) {
      print("Sudah ada di library");
    } else {
      _items.putIfAbsent(
          storyId,
          () => FavoriteStory(
              id: DateTime.now().toString(),
              title: title,
              description: description,
              writer: writer,
              category: category,
              image: image));
    }
  }
}
