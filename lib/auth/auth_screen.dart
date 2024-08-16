import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_with_firebase/screen/login_screen.dart';
import 'package:flutter_instagram_clone_with_firebase/screen/signup_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a = true;
  void go() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return LoginScreen(show: go);
    } else {
      return SignupScreen(show: go);
    }
  }
}
