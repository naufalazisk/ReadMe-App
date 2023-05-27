import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_kelompok_mobile/pages/addStory.dart';
import 'package:provider/provider.dart';

import '../models/story_model.dart';
import '../pages/storyDetail.dart';
import '../providers/storyAdd.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final allStoryProvider = Provider.of<StoryLists>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALL STORIES"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, AddStory.routeName);
            },
          ),
        ],
      ),
      body: (allStoryProvider.jumlahStoryList == 0)
          ? Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "No Data",
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AddStory.routeName);
                    },
                    child: const Text(
                      "Add Player",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: allStoryProvider.jumlahStoryList,
              itemBuilder: (context, index) {
                var id = allStoryProvider.allStoryList[index].id;
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailStory.routeName,
                      arguments: id,
                    );
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      allStoryProvider.allStoryList[index].imageUrl,
                    ),
                  ),
                  title: Text(
                    allStoryProvider.allStoryList[index].title,
                  ),
                  subtitle: Text(
                    DateFormat.yMMMMd()
                        .format(allStoryProvider.allStoryList[index].createdAt),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      allStoryProvider.deleteStoryList(id);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            ),
    );
  }
}
