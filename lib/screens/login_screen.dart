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
        SizedBox(height: 30),
        Form(
          child: Container(
            decoration: BoxDecoration(
                //color: Colors.red,
                ),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: "Email or Phone number",
                        border: InputBorder.none,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: "Password",
                        border: InputBorder.none,
                      ),
                    ),
                  ])),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff517bca)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30)),
                ),
              ),
              SizedBox(height: 50),
              TextButton(
                child: const Text('Forgot Password?'),
                onPressed: () {/* ... */},
              ),
            ]),
          ),
        )
      ],
    ));
  }
}
