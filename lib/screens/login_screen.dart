import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset("assets/images/background.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/light-1.png"),
              Image.asset("assets/images/light-2.png"),
              Image.asset("assets/images/clock.png")
            ],
          ),
          Positioned(
            top: 150,
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w300
              ),
            ),
          )
        ],
      ),
    );
  }
}
