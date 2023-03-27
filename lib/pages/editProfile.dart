import 'package:flutter/material.dart';
import 'package:project_kelompok_mobile/pages/home.dart';

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
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
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
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
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
                SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "New Password",
                  ),
                  onChanged: (value) {
                    setState(() {
                      newPassword = value;
                    });
                  },
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent),
                    overlayColor:
                        MaterialStateProperty.all(Colors.orangeAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  child: Text(
                    "Save Changes",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: _saveChanges,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
