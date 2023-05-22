import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/addStory.dart';

class AddPlayer extends StatelessWidget {
  static const routeName = "/add-story";
  final TextEditingController judulController = TextEditingController();
  final TextEditingController ringkasanController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final players = Provider.of<Players>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text("Add Story",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700)),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              players.addPlayer(
                judulController.text,
                ringkasanController.text,
                imageController.text,
              );
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                autofocus: true,
                decoration: InputDecoration(labelText: "Nama Cerita"),
                textInputAction: TextInputAction.next,
                controller: judulController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Ringkasan"),
                textInputAction: TextInputAction.next,
                controller: ringkasanController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Image URL"),
                textInputAction: TextInputAction.done,
                controller: imageController,
                onEditingComplete: () {
                  players.addPlayer(
                    judulController.text,
                    ringkasanController.text,
                    imageController.text,
                  );
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  onPressed: () {
                    players.addPlayer(
                      judulController.text,
                      ringkasanController.text,
                      imageController.text,
                    );
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
