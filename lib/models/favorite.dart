import 'package:flutter/material.dart';

class FavoriteStory {
  int id;
  String title;
  String description;
  String writer;
  String category;
  String image;

  FavoriteStory(
      {required this.id,
      required this.title,
      required this.description,
      required this.writer,
      required this.category,
      required this.image});
}
