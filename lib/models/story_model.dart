
import 'package:flutter/material.dart';

class StoryList extends ChangeNotifier {
  String id, title, description, categories, imageUrl, author;
  DateTime createdAt;

  StoryList(
      {required this.id,
      required this.title,
      required this.description,
      required this.categories,
      required this.author,
      required this.imageUrl,
      required this.createdAt});
}
