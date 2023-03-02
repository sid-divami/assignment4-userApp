import 'package:assignment_4/screens/users.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({
    super.key,
  });

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  late final TextEditingController _name;
  late final TextEditingController _phoneNumber;
  // final List<List>? allUsers;
  @override
  void initState() {
    _name = TextEditingController();
    _phoneNumber = TextEditingController();
    // allUsers = [];
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New User"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
        child: Column(children: [
          TextField(
            controller: _name,
            keyboardType: TextInputType.name,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(hintText: 'Enter Your Name'),
          ),
          TextField(
            controller: _phoneNumber,
            keyboardType: TextInputType.number,
            enableSuggestions: false,
            autocorrect: false,
            decoration:
                const InputDecoration(hintText: 'Enter Your Phone Number'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Users(
                          name: _name.text,
                          phoneNumber: _phoneNumber.text,
                        )));
              },
              child: Text('Create User'))
        ]),
      ),
    );
  }
}
