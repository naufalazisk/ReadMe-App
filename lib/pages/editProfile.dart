import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  final String name;
  final String email;

  EditProfile({required this.name, required this.email});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String name = "";
  String email = "";
  String password = "";
  String newPassword = "";

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    name = widget.name;
    email = widget.email;
  }

  void _saveChanges() {
    if (_formKey.currentState!.validate()) {
      // Save changes
      Navigator.pop(
        context,
        {
          "name": name,
          "email": email,
          "password": newPassword,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                  ),
                  initialValue: name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                  initialValue: email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email cannot be empty";
                    }
                    if (!value.contains("@")) {
                      return "Invalid email format";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                  ),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "New Password",
                  ),
                  onChanged: (value) {
                    setState(() {
                      newPassword = value;
                    });
                  },
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 194, 151, 151)),
                    overlayColor:
                        MaterialStateProperty.all(Colors.orangeAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  onPressed: _saveChanges,
                  child: const Text(
                    "Save Changes",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
