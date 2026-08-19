




import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/login_header.dart';
import 'package:gorcey_app/widgets/email_field.dart';
import 'package:gorcey_app/widgets/password_field.dart';
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

                  EmailField(
                    controller: _emailController,
                    validator: Validators.validateEmail,
                  ),
                  const SizedBox(height: 30),

                  PasswordField(
                    controller: _passwordController,
                    validator: Validators.validatePassword,
                  ),
                  const SizedBox(height: 20),

                  const ForgotPasswordText(),
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