

import 'package:flutter/material.dart';
import 'package:gorcey_app/screens/bottom_nev_bar_screen.dart';
import 'package:gorcey_app/screens/login_screen.dart';
import 'package:gorcey_app/screens/signup_screen.dart';

class GorceyApp extends StatelessWidget {
  const GorceyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:BottomNevBarScreen (),
    );
  }
}