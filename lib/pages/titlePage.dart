import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../models/story.dart';
import '../providers/stories.dart';

// udah dipindah ke widgets
class TitlePage extends StatelessWidget {
  int id;
  String title;
  String description;
  String writer;
  String category;
  String image;

  TitlePage(this.id, this.title, this.description, this.writer, this.category, this.image,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 70,
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            padding: EdgeInsets.only(left: 10),
            iconSize: 30,
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 23, 0, 20),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: 160,
                  width: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        image: NetworkImage(image),
                        height: 160,
                        width: 120,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage('images/image 1.png'),
                      ),
                    ),
                    Text(
                      writer,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  width: 50,
                  height: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.black),
                  child: Center(
                      child: Text(
                    category,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 365,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(description),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: SizedBox(
                      height: 60,
                      width: 300,
                      child: FittedBox(
                        child: FloatingActionButton(
                          backgroundColor: Color.fromARGB(255, 220, 182, 195),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Start Reading",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Monserrat",
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: SizedBox(
                      height: 60,
                      width: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 220, 182, 195),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(10)),
                          child: Icon(Icons.add)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
