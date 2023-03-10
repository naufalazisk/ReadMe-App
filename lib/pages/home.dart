import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';

class home extends StatelessWidget {
  var faker = Faker();

  home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(5, 23, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 10),
                child: Text("Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/130/130"),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Write',
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
            label: 'Home',
          ),
        ],
        currentIndex: 0,
      ),
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 20),
                        child: Text(
                          "Trending",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat"),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Trending(),
                            Trending(),
                            Trending(),
                            Trending(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 3),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 365,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 0, 5),
                                      child: Text(
                                        "Kategori",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 174,
                                            height: 40,
                                            child: Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Drama",
                                                  style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontSize: 14,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 230, 214, 220),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 174,
                                            height: 40,
                                            child: Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Adventure'),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 230, 214, 220),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 174,
                                            height: 40,
                                            child: Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Romance'),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 230, 214, 220),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 174,
                                            height: 40,
                                            child: Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Thriller'),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 230, 214, 220),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 174,
                                            height: 40,
                                            child: Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Slice of Life'),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 230, 214, 220),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 174,
                                            height: 40,
                                            child: Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Comedy'),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 230, 214, 220),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 174,
                                            height: 40,
                                            child: Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Horror'),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 230, 214, 220),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 174,
                                            height: 40,
                                            child: Card(
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Sci-fi'),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 230, 214, 220),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 10, top: 15),
                                    child: Text(
                                      "Editor's picks",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Montserrat"),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Editor's handpicks favorites",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Montserrat"),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                        Poster(image: aot),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 280,
        height: 160,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: const Image(
                image: NetworkImage("https://picsum.photos/280/130"),
                width: 280,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(3, 10, 0, 5),
              child: Text("Tittle story",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(3, 2, 8, 0),
                  child: Text("Sinopsis dari cerita yang dipublikasikan"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Poster extends StatelessWidget {
  final String image;

  Poster({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.5, right: 2.5),
      child: Container(
        width: 120,
        height: 180,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(
            image: AssetImage(image),
            width: 120,
            height: 180,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}

//Images Poster
String aot = "images/image 1.jpeg";
String aot1 = "images/image 8.png";
String aot2 = "images/image 16.png";
String aot3 = "images/image 11.png";
String aot4 = "images/image 14.png";
