import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/background.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/light-1.png",
                  height: 180,
                ),
                Image.asset(
                  "assets/images/light-2.png",
                  height: 100,
                ),
                Image.asset("assets/images/clock.png")
              ],
            ),
            Positioned(
              top: 180,
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Form(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email or Phone number",
                  border: InputBorder.none,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ButtonStyle(
                  
                ),
              ),
            ]),
          ),
        )
      ],
    ));
  }
}
