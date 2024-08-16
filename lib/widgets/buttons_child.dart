// widgets/buttons_child.dart
import 'package:flutter/material.dart';

import 'package:store_appy/constant/constant_colors.dart';

class TextButtonsChild extends StatelessWidget {
  final String text;
  const TextButtonsChild({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: primarytextColor,
          ),
        ));
  }
}

class LoginButtonChild extends StatelessWidget {
  final String text;
  const LoginButtonChild({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ));
  }
}
