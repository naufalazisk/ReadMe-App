import 'package:flutter/material.dart';

// model for faker

class Story with ChangeNotifier {
  String id;
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
