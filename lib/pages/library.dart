import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_kelompok_mobile/pages/StoryInside.dart';
import 'package:project_kelompok_mobile/pages/titlePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_kelompok_mobile/pages/search.dart';
import 'package:project_kelompok_mobile/pages/titlePage.dart';

class Library extends StatelessWidget {
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
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text("Library",
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
                    child: Text("Favourite",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat")),
                  ),
                  const Favorite(),
                  const Favorite(),
                  const Favorite(),
                  const Favorite(),
                  const Favorite(),
                  const Favorite(),
                  const Favorite(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Favorite extends StatelessWidget {
  const Favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => TitlePage()));
      // },
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

// class Library extends StatelessWidget {
//   final List<Poster> poster = [Poster(image: aot)];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         toolbarHeight: 70,
//         elevation: 2,
//         backgroundColor: Colors.white,
//         title: Padding(
//           padding: const EdgeInsets.fromLTRB(5, 23, 10, 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: const [
//               Padding(
//                 padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
//                 child: Text("Library",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 25,
//                         fontFamily: "Montserrat",
//                         fontWeight: FontWeight.w700)),
//               )
//             ],
//           ),
//         ),
//       ),
//       body: GridView(
//         padding: EdgeInsets.all(15),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ),
//         children: poster,
//       ),
//       // body: SingleChildScrollView(
//       //   child: Column(
//       //     crossAxisAlignment: CrossAxisAlignment.start,
//       //     children: [
//       //       Padding(
//       //         padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
//       //         child: Column(
//       //           crossAxisAlignment: CrossAxisAlignment.start,
//       //           children: [
//       //             SizedBox(
//       //                 height: 220,
//       //                 child: Row(
//       //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //                   children: [
//       //                     Poster(image: aot),
//       //                     Poster(image: aot),
//       //                     Poster(image: aot)
//       //                   ],
//       //                 )),
//       //             SizedBox(
//       //                 height: 220,
//       //                 child: Row(
//       //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //                   children: [
//       //                     Poster(image: aot),
//       //                     Poster(image: aot),
//       //                     Poster(image: aot)
//       //                   ],
//       //                 )),
//       //             SizedBox(
//       //                 height: 220,
//       //                 child: Row(
//       //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //                   children: [
//       //                     Poster(image: aot),
//       //                     Poster(image: aot),
//       //                     Poster(image: aot)
//       //                   ],
//       //                 )),
//       //             SizedBox(
//       //                 height: 220,
//       //                 child: Row(
//       //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //                   children: [
//       //                     Poster(image: aot),
//       //                     Poster(image: aot),
//       //                     Poster(image: aot)
//       //                   ],
//       //                 )),
//       //           ],
//       //         ),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }

// class Poster extends StatelessWidget {
//   final String image;

//   Poster({
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 2.5, right: 2.5),
//       child: InkWell(
//         onTap: () => Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => TitlePage()),
//         ),
//         child: Container(
//           // width: 120,
//           // height: 600,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 width: 120,
//                 height: 180,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(5),
//                   child: Image(
//                     image: AssetImage(image),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               // ClipRRect(
//               //   borderRadius: BorderRadius.circular(5),
//               //   // child: Image(
//               //   //   image: AssetImage(image),
//               //   //   fit: BoxFit.cover,
//               //   // ),
//               // ),
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
//                 child: Text("Tittle story",
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 13,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: "Montserrat")),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// //Images Poster
// String aot = "images/image 1.png";
