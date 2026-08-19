

import 'package:flutter/material.dart';

class AuthSwitchRow extends StatelessWidget {
  final String questionText;
  final String actionText;
  final VoidCallback? onTap;

  const AuthSwitchRow({
    super.key,
    required this.questionText,
    required this.actionText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questionText,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff53B175),
            ),
          ),
        ),
      ],
    );
  }
}