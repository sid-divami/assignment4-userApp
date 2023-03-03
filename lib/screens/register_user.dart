import 'package:flutter/material.dart';

import '../constants/user.dart';
import '../screens/display_users.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  int count = 0;
  // Input fields for name and phone number
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  // List of users to be passed onto next screen.
  List<User> users = [];
  // onSubmit function
  void onSubmit() {
    setState(() {
      users.add(User(count++, name.text, phone.text));
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ShowUsers(users: users)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Center(child: Text('Create User')),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 200),
        child: Center(
            child: Column(
          children: [
            Text('Create User'),
            Text('Enter Name'),
            TextField(
              controller: name,
            ),
            Text('Enter Phone'),
            TextField(
              controller: phone,
            ),
            // Elevated button that triggers submit event onP
            ElevatedButton(
                onPressed: () => onSubmit(), child: Text('Submit User Data'))
          ],
        )),
      ),
    );
  }
}
