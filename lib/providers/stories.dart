import 'package:flutter/material.dart';
import '../models/story.dart';
import 'package:faker/faker.dart';

class Stories with ChangeNotifier {
  List<Story> _allstory = List.generate(100, (index) {
    return Story(
        index,
        Faker().person.lastName(), //title
        Faker().lorem.sentence(), //desc
        Faker().person.firstName(), //writer
        "Horror",
        'https://picsum.photos/1080/1000?random=$index');
  });

  // akses semua data
  List<Story> get allstory {
    return [..._allstory];
  }

  // void addStory() {
  //   allstory.add(value);
  //   notifyListeners();
  // }
}
