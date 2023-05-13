import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/stories.dart';
import '../pages/signIn.dart';
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
    return ChangeNotifierProvider(
      create: (context) => Stories(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: signIn()),
    );
  }
}
