import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:project_kelompok_mobile/widgets/category.dart';
import '../models/story_model.dart';

class StoryLists with ChangeNotifier {
  List<StoryList> _allStoryList = [];

  List<StoryList> get allStoryList => _allStoryList;

  int get jumlahStoryList => _allStoryList.length;

  StoryList selectById(String id) =>
      _allStoryList.firstWhere((element) => element.id == id);

  void addStoryList(String title, String description, String categories,
      String image, String part, String content,
      [BuildContext? context]) async {
    DateTime datetimeNow = DateTime.now();

    Uri url = Uri.parse(
        "https://readme-cfafc-default-rtdb.firebaseio.com/StoryLists.json");

    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            "id": datetimeNow.toString(),
            "title": title,
            "description": description,
            "categories": categories,
            "writer": "aivel",
            "imageUrl": image,
            "createdAt": datetimeNow.toString(),
            "part": part,
            "content": content,
          },
        ),
      );
      if (response.statusCode >= 200 && response.statusCode < 300) {
        _allStoryList.add(
          StoryList(
            id: json.decode(response.body)["name"].toString(),
            title: title,
            description: description,
            categories: categories,
            writer: "aivel",
            imageUrl: image,
            createdAt: datetimeNow,
            part: part,
            content: content,
          ),
        );
        print(allStoryList);

        notifyListeners();
      } else {
        throw ("${response.statusCode}");
      }
    } catch (error) {
      throw (error);
    }
  }

  void editStoryList(String id, String title, String description, String image,
      String part, String content) async {
    Uri url = Uri.parse(
        "https://readme-cfafc-default-rtdb.firebaseio.com/StoryLists/$id.json");

    final response = await http.patch(
      url,
      body: json.encode(
        {
          "title": title,
          "description": description,
          "imageUrl": image,
          "part": part,
          "content": content
        },
      ),
    );

    StoryList selectStoryList =
        _allStoryList.firstWhere((element) => element.id == id);
    selectStoryList.title = title;
    selectStoryList.description = description;
    selectStoryList.imageUrl = image;
    notifyListeners();
  }

  deleteStoryList(String id) async {
    Uri url = Uri.parse(
        "https://readme-cfafc-default-rtdb.firebaseio.com/StoryLists/$id.json");

    final response = await http.delete(url).then(
      (response) {
        _allStoryList.removeWhere((element) => element.id == id);
        notifyListeners();
      },
    );
  }

  Future<void> initialData() async {
    Uri url = Uri.parse(
        "https://readme-cfafc-default-rtdb.firebaseio.com/StoryLists.json");

    var hasilGetData = await http.get(url);

    var dataResponse = json.decode(hasilGetData.body) as Map<String, dynamic>;
    print(dataResponse);

    _allStoryList.clear();

    dataResponse.forEach(
      (key, value) {
        DateTime dateTimeParse =
            DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["createdAt"]);
        _allStoryList.add(
          StoryList(
              id: key,
              createdAt: dateTimeParse,
              imageUrl: value["imageUrl"],
              writer: value["writer"],
              title: value["title"],
              categories: value["categories"],
              description: value["description"],
              part: value["part"],
              content: value["content"]),
        );
      },
    );
    print("BERHASIL MASUKAN DATA LIST");

    notifyListeners();
  }
}
