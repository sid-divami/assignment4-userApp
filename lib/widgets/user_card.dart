import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  String userName;
  String age;
  Function delete;
  Function edit;
  UserCard(
      {super.key,
      required this.userName,
      required this.age,
      required this.delete,
      required this.edit});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(userName),
      Text(age),
      ElevatedButton(onPressed: () {}, child: const Icon(Icons.edit)),
      ElevatedButton(onPressed: () {}, child: const Icon(Icons.delete))
    ]);
  }
}
