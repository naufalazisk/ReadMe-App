import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class Users with ChangeNotifier {
  List<User> _allUser = [];

  List<User> get allUser => _allUser;

  int get jumlaUser => _allUser.length;

  User selectById(String id) =>
      _allUser.firstWhere((element) => element.id == id);

  void addUser(String name, String username, String email, String image,
      String userDescription, BuildContext context) {
    DateTime datetimeNow = DateTime.now();

    Uri url = Uri.parse("https://readme-cfafc-default-rtdb.firebaseio.com/");
    http.post(
      url,
      body: json.encode(
        {
          "id": datetimeNow.toString(),
          "name": name,
          "username": username,
          "email": email,
          "image": image,
          "userDescription": userDescription,
          "createdAt": datetimeNow.toString(),
        },
      ),
    );
    _allUser.add(
      User(
        id: datetimeNow.toString(),
        name: name,
        username: username,
        email: email,
        image: image,
        userDescription: userDescription,
        createdAt: datetimeNow,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Berhasil ditambahkan"),
        duration: Duration(seconds: 2),
      ),
    );
    notifyListeners();
  }

  void editUser(String name, String username, String email, String image,
      String userDescription, BuildContext context) {
    Object id = String;
    User selectUser = _allUser.firstWhere((element) => element.id == id);
    selectUser.name = name;
    selectUser.username = username;
    selectUser.email = email;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Berhasil diubah"),
        duration: Duration(seconds: 2),
      ),
    );
    notifyListeners();
  }

  void deleteUser(String id, BuildContext context) {
    _allUser.removeWhere((element) => element.id == id);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Berhasil dihapus"),
        duration: Duration(milliseconds: 500),
      ),
    );
    notifyListeners();
  }
}
