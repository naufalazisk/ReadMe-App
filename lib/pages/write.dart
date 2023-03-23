import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:project_kelompok_mobile/pages/createStory.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';

class Write extends StatelessWidget {
  var faker = Faker();

  Write({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 2,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(8, 23, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text("Write",
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 20),
                child: Icon(
                  Icons.document_scanner_rounded,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => createStory())),
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 30, left: 5),
                  child: Text(
                    "Create new story ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
