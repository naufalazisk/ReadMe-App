import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_kelompok_mobile/pages/kategori.dart';
import 'package:project_kelompok_mobile/pages/onSearch.dart';
import 'package:intl/intl.dart';

class search extends StatelessWidget {
  var faker = Faker();

  search({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 50,
          elevation: 2,
          backgroundColor: Color(0xffD6C9C9),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(8, 23, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(140, 25, 0, 10),
                  child: Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: Container(
              margin: EdgeInsets.only(left: 25, bottom: 20, right: 25),
              alignment: FractionalOffset.topCenter,
              height: 55,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => onSearch())),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 4),
                      child: Text(
                        "Search for stories or people",
                        style: TextStyle(
                          fontFamily: 'LexendDeca',
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.search),
                    color: Colors.grey,
                    padding: EdgeInsets.only(top: 5),
                  )
                ],
              ),
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
                icon: Icon(Icons.edit_sharp),
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
                label: 'Notification',
              ),
            ],
            currentIndex: 3),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 34, top: 20),
                  child: Text(
                    "Browse category",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"),
                    textAlign: TextAlign.left,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kategori())),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 34),
                      alignment: FractionalOffset.topCenter,
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffD6C9C9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "Drama",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kategori())),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 34),
                      alignment: FractionalOffset.topCenter,
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffD6C9C9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "Adventure",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kategori())),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 34),
                      alignment: FractionalOffset.topCenter,
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffD6C9C9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "Romance",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kategori())),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 34),
                      alignment: FractionalOffset.topCenter,
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffD6C9C9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "Comedy",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kategori())),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 34),
                      alignment: FractionalOffset.topCenter,
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffD6C9C9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "Horror",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kategori())),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 34),
                      alignment: FractionalOffset.topCenter,
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffD6C9C9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "Sci-fi",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kategori())),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 34),
                      alignment: FractionalOffset.topCenter,
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffD6C9C9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "Thriller",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kategori())),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5, left: 34),
                      alignment: FractionalOffset.topCenter,
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffD6C9C9),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Text(
                        "Slice of Life",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
