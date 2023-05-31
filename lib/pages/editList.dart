import 'package:flutter/material.dart';
import 'package:project_kelompok_mobile/widgets/edit.dart';
import 'package:provider/provider.dart';
import '../providers/storyAdd.dart';
import '../widgets/category.dart';

class EditList extends StatefulWidget {
  const EditList({super.key});

  @override
  State<EditList> createState() => _EditListState();
}

class _EditListState extends State<EditList> {
  bool isInit = true;
  @override
  void didChangeDependencies() {
    if (isInit) {
      Provider.of<StoryLists>(context).initialData();
    }
    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<StoryLists>(context);
    final dataMain = data.allStoryList;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffD6C9C9),
        toolbarHeight: 70,
        elevation: 2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 35,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(70, 10, 0, 10),
          child: Text("Modify Story",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700)),
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
                  // const Padding(
                  //   padding: EdgeInsets.only(bottom: 10, top: 20),
                  //   child: Text("All Stories",
                  //       style: TextStyle(
                  //           color: Colors.black,
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.bold,
                  //           fontFamily: "Montserrat")),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: (dataMain.length == 0)
                        ? const Center(
                            child: Text(
                              "No Story Added",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: "Monserrat"),
                            ),
                          )
                        : ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) =>
                                ChangeNotifierProvider.value(
                                    value: dataMain[index],
                                    child: EditWidget(index: index)),
                            itemCount: dataMain.length,
                          ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
