

import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'By continuing you agree to our ',
        style: const TextStyle(color: Color(0xff7C7C7C), fontSize: 14),
        children: [
          const TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
              color: Color(0xff53B175),
              fontWeight: FontWeight.w600,
            ),
          ),
          const TextSpan(text: ' and '),
          const TextSpan(
            text: 'Privacy Policy.',
            style: TextStyle(
              color: Color(0xff53B175),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}