import 'package:flutter/material.dart';

class StoryList {
  String id, title, description, categories, imageUrl;
  DateTime createdAt;

  StoryList(
      {required this.id,
      required this.title,
      required this.description,
      required this.categories,
      required this.imageUrl,
      required this.createdAt});
}
