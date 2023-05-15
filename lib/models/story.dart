import 'package:flutter/material.dart';

class Story with ChangeNotifier {
  int id;
  String title;
  String description;
  String writer;
  String category;
  String image;

  Story(
    this.id,
    this.title,
    this.description,
    this.writer,
    this.category,
    this.image,
  );
}
