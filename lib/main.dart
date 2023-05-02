import 'package:flutter/material.dart';
import 'package:project_kelompok_mobile/pages/StoryInside.dart';
import 'package:project_kelompok_mobile/pages/home.dart';
<<<<<<< HEAD
=======
import 'package:project_kelompok_mobile/pages/createStory.dart';
import 'package:project_kelompok_mobile/pages/kategori.dart';
import 'package:project_kelompok_mobile/pages/profile.dart';
>>>>>>> e495f01f7e0fec5944fddf73935a39b9e2d380a0
import 'package:project_kelompok_mobile/pages/write.dart';
import 'package:project_kelompok_mobile/pages/signIn.dart';
import 'package:project_kelompok_mobile/pages/signUp.dart';
import 'package:project_kelompok_mobile/pages/titlePage.dart';
<<<<<<< HEAD
import 'package:project_kelompok_mobile/pages/StoryInside.dart';
=======
import 'package:project_kelompok_mobile/pages/createPart.dart';
import 'package:project_kelompok_mobile/pages/library.dart';
import 'package:project_kelompok_mobile/pages/onSearch.dart';
>>>>>>> e495f01f7e0fec5944fddf73935a39b9e2d380a0
import './pages/search.dart';
import './pages/notification.dart';
import 'package:project_kelompok_mobile/navbar.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
<<<<<<< HEAD
        home: signIn());
=======
        home: navbar());
>>>>>>> e495f01f7e0fec5944fddf73935a39b9e2d380a0
  }
}
