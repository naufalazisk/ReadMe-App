import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// tampilan ketia baca cerita

class StoryPage extends StatelessWidget {
  StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 23, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text("Title",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
