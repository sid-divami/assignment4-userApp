import 'package:final_assignment_4/constants/user.dart';
import 'package:flutter/material.dart';

import '../widgets/user_card.dart';

class ShowUsers extends StatefulWidget {
  List<User> users = [];
  ShowUsers({super.key, required this.users});

  @override
  State<ShowUsers> createState() => _ShowUsersState();
}

class _ShowUsersState extends State<ShowUsers> {
  // methods defined for user - delete and edit user.
  void deleteUser(int index) {
    print("deleting user");
  }

  void editUser(int index) {
    print("edit user");
  }

  // List<User> users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Row(
            children: const [
              Text('S.No'),
              Text('Name'),
              Text('Age'),
              Text('Edit'),
              Text('Delete'),
            ],
          ),
        ),
        ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: widget.users.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(2),
                child: UserCard(
                    userName: widget.users[index].name,
                    age: widget.users[index].age,
                    delete: () => deleteUser(index),
                    edit: () => editUser(index)),
              );
            })
      ]),
    );
  }
}
