import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_kelompok_mobile/pages/home.dart';
import 'package:project_kelompok_mobile/pages/search.dart';
import 'package:project_kelompok_mobile/pages/titlePage.dart';

class kategoriHome extends StatelessWidget {
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
              pageBuilder: (context, animation, secondaryAnimation) => Home(),
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
                padding: EdgeInsets.fromLTRB(100, 10, 0, 10),
                child: Text("Horror",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 20),
                    child: Text("All Stories",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat")),
                  ),
                  const theKategori(),
                  const theKategori(),
                  const theKategori(),
                  const theKategori(),
                  const theKategori(),
                  const theKategori(),
                  const theKategori(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class theKategori extends StatelessWidget {
  const theKategori({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TitlePage()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 5),
        child: Container(
          width: 500,
          height: 130,
          color: Colors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: const Image(
                  image: NetworkImage("https://picsum.photos/90/100"),
                  width: 90,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 1),
                      child: SizedBox(
                        width: 250,
                        child: Text("Title",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                fontFamily: "Montserrat")),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text("Writer",
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat")),
                    ),
                    const SizedBox(
                      width: 250,
                      child: Text(
                        "Sinopsis dari cerita yang ada bisa panjang sampai 2 baris maksimal",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.5,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 13,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.black),
                            child: const Center(
                                child: Text(
                              "Horror",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat"),
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
