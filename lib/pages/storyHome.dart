import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_kelompok_mobile/pages/addStory.dart';
import 'package:provider/provider.dart';

import '../models/addStory.dart';
import '../pages/storyDetail.dart';
import '../providers/storyAdd.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final allStoryProvider = Provider.of<StoryLists>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("ALL STORIES"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
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
                  Text(
                    "No Data",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AddStory.routeName);
                    },
                    child: Text(
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
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            ),
    );
  }
}
