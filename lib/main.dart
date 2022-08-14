import 'package:flutter/material.dart';
import 'package:loginpage/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      routes: {
        "/login_screen": (context) => const LoginScreen(),
      },
      // A widget which will be started on application startup
      home: LoginScreen(),
    );
  }
}
