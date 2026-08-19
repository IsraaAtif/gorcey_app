

import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const UsernameField({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      validator: validator,
      decoration: const InputDecoration(
        labelText: "Username",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE2E2E2)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff53B175)),
        ),
      ),
    );
  }
}