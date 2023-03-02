import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Users extends StatelessWidget {
  final String? name;
  final String? phoneNumber;
  final List<Map<String, String>>? users;
  const Users({super.key, this.name, this.phoneNumber, this.users});
  // const users =[{'name':"Sidharth",'age':'30'}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
          print("pressed");
        }),
        title: Text('List of Users'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Name'),
                  Text('Phone Number'),
                  Text('Edit'),
                  Text('Delete')
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: users?.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(users?[index]['name'] ?? "Default"),
                    Text(users?[index][name] ?? "23")
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
