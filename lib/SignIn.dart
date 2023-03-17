import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import './SignInButton.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  void SignInFunction() {}
  final UsernameController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Wallex",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                controller: UsernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                controller: PasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SignInButton(
              SignInFunction: SignInFunction,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a Member? "),
                Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
