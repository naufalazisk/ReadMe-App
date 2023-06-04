import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_kelompok_mobile/pages/profile.dart';

class Notifications extends StatelessWidget {
  final faker = Faker();

  Notifications({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(8, 23, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text("Notification",
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ChatItem(
                imageUrl: "https://picsum.photos/id/$index/200/300",
                title: faker.person.name(),
                subtitle: faker.lorem.sentence());
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  DateFormat date = DateFormat("dd/MM/yyyy");
  final String imageUrl;
  final String title;
  final String subtitle;

  ChatItem(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(date.format(DateTime.parse(DateTime.now().toString()))),
    );
  }
}
