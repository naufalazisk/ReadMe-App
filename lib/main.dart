import 'package:flutter/material.dart';
import 'package:project_kelompok_mobile/pages/favorite.dart';
import 'package:project_kelompok_mobile/pages/library.dart';
import 'package:project_kelompok_mobile/providers/addStory.dart';
import 'package:project_kelompok_mobile/providers/auth.dart';
import 'package:project_kelompok_mobile/providers/favorites.dart';
import 'package:provider/provider.dart';

import '../providers/stories.dart';
import '../navbar.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       title: 'Flutter Demo',
  //       theme: ThemeData(
  //         primarySwatch: Colors.purple,
  //       ),
  //       home: signIn());
  // }
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Auth()),
        ChangeNotifierProvider(create: (context) => Stories()),
        ChangeNotifierProvider(create: (context) => Players()),
        ChangeNotifierProvider(create: (context) => Favorites())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          // theme: ThemeData(
          //   primarySwatch: Colors.purple,
          // ),
          home: navbar()),
    );
  }
}
