// screens/signup_screen.dart
import 'package:flutter/material.dart';
import 'package:store_appy/screens/login_screen.dart';
import 'package:store_appy/widgets/singup_screen_widgets.dart';

class SingupScreen extends StatelessWidget {
  static const id = '/singup';
  const SingupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginScreenWidgets();
  }
}

class LoginScreenWidgets extends StatelessWidget {
  const LoginScreenWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }
}
