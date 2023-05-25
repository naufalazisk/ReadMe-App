import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import '../pages/favorite.dart';
import '../pages/library.dart';
import '../pages/signIn.dart';
import '../pages/signUp.dart';
import 'providers/storyAdd.dart';
import '../providers/authentication.dart';
import '../providers/favorites.dart';
import '../providers/stories.dart';
import '../navbar.dart';
import '../wrapper.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        Provider<Authentication>(
          create: (_) => Authentication(),
        ),
        ChangeNotifierProvider(create: (context) => Stories()),
        ChangeNotifierProvider(create: (context) => StoryLists()),
        ChangeNotifierProvider(create: (context) => Favorites())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   primarySwatch: Colors.purple,
        // ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Wrapper(),
          '/login': (context) => signIn(),
          '/register': (context) => signUp(),
        },
        // home: navbar()
      ),
    );
  }
}
