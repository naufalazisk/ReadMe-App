import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_kelompok_mobile/pages/write.dart';
import 'package:project_kelompok_mobile/pages/createPart.dart';

class createStory extends StatelessWidget {
  createStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => write(),
            ));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 35,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 23, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(70, 10, 0, 10),
                child: Text("Add Story Info",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 15, 0),
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => createPart())),
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 100,
                      child: Image.asset(
                        "images/image 1.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 40),
                      child: Text(
                        "Add a cover",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: SizedBox(
                  width: 400,
                  child: TextField(
                    minLines: 1,
                    maxLines: 5,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14, left: 13),
                      hintText: 'Story Title',
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 400,
                child: TextField(
                  maxLines: null,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 13),
                    hintText: 'Give a description to your story',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
