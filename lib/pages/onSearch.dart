import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class onSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold();
=======
    return Scaffold(
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
                padding: EdgeInsets.fromLTRB(90, 25, 0, 10),
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
        // kurang tulisan cancel navigator.pop ke write
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
            child: TextField(
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 13),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.black38),
              ),
            ),
          ),
        ),
      ),
    );
>>>>>>> e495f01f7e0fec5944fddf73935a39b9e2d380a0
  }
}
