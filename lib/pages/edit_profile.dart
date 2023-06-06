import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<Auth>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffD6C9C9),
        toolbarHeight: 75,
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: const Text(
            "Edit Profile",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700),
          ),
        ),
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
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email cannot be empty";
                    }
                    if (!value.contains("@")) {
                      return "Invalid email format";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Deskripsi",
                  ),
                ),
                const SizedBox(height: 32),
                // ElevatedButton(
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all(
                //         const Color.fromARGB(255, 194, 151, 151)),
                //     overlayColor:
                //         MaterialStateProperty.all(Colors.orangeAccent),
                //     shape: MaterialStateProperty.all(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(16.0),
                //       ),
                //     ),
                //   ),
                //   child: const Text(
                //     "Save Changes",
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
