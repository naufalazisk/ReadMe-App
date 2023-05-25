import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project_kelompok_mobile/pages/addStory.dart';
import '../providers/storyAdd.dart';

class DetailStory extends StatelessWidget {
  static const routeName = "/storyDetail";

  @override
  Widget build(BuildContext context) {
    final stories = Provider.of<StoryLists>(context, listen: false);
    final storyId = ModalRoute.of(context)?.settings.arguments as String;
    final selectStory = stories.selectById(storyId);
    final TextEditingController imageController =
        TextEditingController(text: selectStory.imageUrl);
    final TextEditingController titleController =
        TextEditingController(text: selectStory.title);
    final TextEditingController descriptionController =
        TextEditingController(text: selectStory.description);
    final TextEditingController categoryController =
        TextEditingController(text: selectStory.categories);
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAIL STORY"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 101, 139, 255),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageController.text),
                    ),
                  ),
                ),
              ),
              TextFormField(
                autocorrect: false,
                autofocus: true,
                decoration: InputDecoration(labelText: "Judul"),
                textInputAction: TextInputAction.next,
                controller: titleController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Ringkasan"),
                textInputAction: TextInputAction.next,
                controller: descriptionController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Kategori"),
                textInputAction: TextInputAction.next,
                controller: categoryController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Image URL"),
                textInputAction: TextInputAction.done,
                controller: imageController,
                onEditingComplete: () {
                  stories.editStoryList(
                    storyId,
                    titleController.text,
                    descriptionController.text,
                    // categoryController.text,
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
                    stories.editStoryList(
                      storyId,
                      titleController.text,
                      descriptionController.text,
                      // categoryController.text,
                      imageController.text,
                    );
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Edit",
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
