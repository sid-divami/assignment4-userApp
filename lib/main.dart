import 'package:assignment_4/screens/splash_screen.dart';
import 'package:assignment_4/screens/welcome.dart';
import 'package:flutter/material.dart';

import 'screens/register_user.dart';
import 'screens/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/welcome',
      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome': (context) => const Welcome(),
        '/register': (context) => const RegisterUser(),
        '/users': (context) => const Users()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
