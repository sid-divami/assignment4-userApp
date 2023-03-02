import 'package:assignment_4/widgets/generic_button.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome !',
              // textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CustomButton(
                      buttonText: 'Create New User',
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                    ),
                  ),
                  CustomButton(
                    buttonText: 'View Users',
                    onTap: () {
                      Navigator.pushNamed(context, '/users');
                    },
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
