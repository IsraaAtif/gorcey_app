


import 'package:flutter/material.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 28.42),
        Center(child: Image.asset("assets/images/carrot.png")),
        const SizedBox(height: 100.2),
        const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Color(0xff181725),
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          "Enter your credentials to continue",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}