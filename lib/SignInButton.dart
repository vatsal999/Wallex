import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.SignInFunction});

  final Function()? SignInFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: SignInFunction,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.indigoAccent,
        ),
        height: 50,
        width: 150,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Text(
          "Sign in",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
