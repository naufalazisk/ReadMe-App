import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/story.dart';
import '../pages/titlePage.dart';
import '../providers/stories.dart';

class Trending extends StatelessWidget {
  const Trending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Story>(context);

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TitlePage(data.id, data.title, data.image,
                    data.writer, data.category, data.description)));
      },
      child: Padding(
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
                child: Image(
                  image: NetworkImage(data.image),
                  width: 280,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(3, 10, 0, 5),
                child: Text(data.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat")),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(3, 2, 4, 0),
                  child: SizedBox(
                    width: 250,
                    child: Text(
                      data.description,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Montserrat"),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      maxLines: 1,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
