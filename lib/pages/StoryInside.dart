import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StoryInside extends StatelessWidget {
  StoryInside({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize: 35,
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text("Title",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700)),
      ),
    );
  }
}
