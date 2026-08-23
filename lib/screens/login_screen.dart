

import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/login_header.dart';
import 'package:gorcey_app/widgets/custom_text_field.dart';
import 'package:gorcey_app/widgets/forgot_password.dart';
import 'package:gorcey_app/widgets/primary_button.dart';
import 'package:gorcey_app/widgets/auth_switch_row.dart';
import 'package:gorcey_app/widgets/validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      print("On Tapped");
    }
  }

  void _handleSignupTap() {
    print("Navigate to Signup");
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
                  const LoginHeader(),

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
                    bottomWidget: const ForgotPasswordText(),
                  ),
                  const SizedBox(height: 30),

                  PrimaryButton(text: "Log In", onTap: _handleLogin),
                  const SizedBox(height: 25),

                  AuthSwitchRow(
                    questionText: "Don't have an account?",
                    actionText: "Signup",
                    onTap: _handleSignupTap,
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