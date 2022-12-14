import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: "Email or Phone number",
                            border: InputBorder.none,
                          ),
                        ),
                        Divider(
                          height: .5,
                          thickness: 1,
                          indent: 5,
                          endIndent: 5,
                          color: Color(0xffe5e3e3),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: "Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ])),
                  SizedBox(height: 25),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffaabbdb),
                          Color(0xff517bca),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        //width: ,
                        /*padding:
                            EdgeInsets.symmetric(horizontal: 120, vertical: 13),*/
                        child: Text("Login"),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        minimumSize: const Size.fromHeight(60),
                        //make color or elevated button transparent
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextButton(
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color(0xff517bca)),
                    ),
                    onPressed: () {/* ... */},
                  ),
                ]),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
