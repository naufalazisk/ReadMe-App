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
<<<<<<< HEAD
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 220, 182, 195),
        unselectedItemColor: Colors.black12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notifications',
          ),
        ],
        currentIndex: 0,
=======
          iconSize: 35,
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text("Part title",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700)),
>>>>>>> e495f01f7e0fec5944fddf73935a39b9e2d380a0
      ),
    );
  }
}
