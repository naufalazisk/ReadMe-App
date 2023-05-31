import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/categoryList.dart';
import '../providers/storyAdd.dart';
import '../pages/profile.dart';
import '../widgets/poster.dart';
import '../widgets/trending.dart';
import '../providers/stories.dart';

class Home extends StatelessWidget {
  var faker = Faker();

  Home({super.key});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Stories>(context);
    final dataMain = data.allstory;

    final realData = Provider.of<StoryLists>(context);
    final realDataMain = realData.allStoryList;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(5, 23, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text("Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage("https://picsum.photos/130/130"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                ChangeNotifierProvider.value(
                              value: dataMain[index],
                              child: const Trending(),
                            ),
                            itemCount: 4,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 3),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 405,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
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
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryList())),
                                            child: const SizedBox(
                                              width: 174,
                                              height: 40,
                                              child: Card(
                                                color: Color.fromARGB(
                                                    255, 230, 214, 220),
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
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryList())),
                                            child: const SizedBox(
                                              width: 174,
                                              height: 40,
                                              child: Card(
                                                color: Color.fromARGB(
                                                    255, 230, 214, 220),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Adventure",
                                                    style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
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
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryList())),
                                            child: const SizedBox(
                                              width: 174,
                                              height: 40,
                                              child: Card(
                                                color: Color.fromARGB(
                                                    255, 230, 214, 220),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Horror",
                                                    style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryList())),
                                            child: const SizedBox(
                                              width: 174,
                                              height: 40,
                                              child: Card(
                                                color: Color.fromARGB(
                                                    255, 230, 214, 220),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Sci-fi",
                                                    style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
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
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryList())),
                                            child: const SizedBox(
                                              width: 174,
                                              height: 40,
                                              child: Card(
                                                color: Color.fromARGB(
                                                    255, 230, 214, 220),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Thriller",
                                                    style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryList())),
                                            child: const SizedBox(
                                              width: 174,
                                              height: 40,
                                              child: Card(
                                                color: Color.fromARGB(
                                                    255, 230, 214, 220),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Slice of Life",
                                                    style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
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
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryList())),
                                            child: const SizedBox(
                                              width: 174,
                                              height: 40,
                                              child: Card(
                                                color: Color.fromARGB(
                                                    255, 230, 214, 220),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Komedi",
                                                    style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryList())),
                                            child: const SizedBox(
                                              width: 174,
                                              height: 40,
                                              child: Card(
                                                color: Color.fromARGB(
                                                    255, 230, 214, 220),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Romance",
                                                    style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 14,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
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
                                  const Padding(
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
                                  const Padding(
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
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            ChangeNotifierProvider.value(
                                          value: realDataMain[index],
                                          child: const Poster(),
                                        ),
                                        itemCount: realDataMain.length,
                                      )),
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
