

import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/signup_header.dart';
import 'package:gorcey_app/widgets/custom_text_field.dart';
import 'package:gorcey_app/widgets/terms_text.dart';
import 'package:gorcey_app/widgets/primary_button.dart';
import 'package:gorcey_app/widgets/auth_switch_row.dart';
import 'package:gorcey_app/widgets/validators.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _handleSignup() {
    if (_formKey.currentState!.validate()) {
      print("On Tapped");
    }
  }

  void _handleLoginTap() {
    print("Navigate to Login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SignupHeader(),

                  CustomTextField(
                    labelText: "Username",
                    controller: _usernameController,
                    validator: Validators.validateUsername,
                  ),
                  const SizedBox(height: 30),

                  CustomTextField(
                    labelText: "Email",
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: Validators.validateEmail,
                  ),
                  const SizedBox(height: 30),

                  CustomTextField(
                    labelText: "Password",
                    controller: _passwordController,
                    isPassword: true,
                    validator: Validators.validatePassword,
                    bottomWidget: const TermsText(),
                  ),
                  const SizedBox(height: 30),

                  PrimaryButton(text: "Sign Up", onTap: _handleSignup),
                  const SizedBox(height: 25),

                  AuthSwitchRow(
                    questionText: "Already have an account?",
                    actionText: "Login",
                    onTap: _handleLoginTap,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}