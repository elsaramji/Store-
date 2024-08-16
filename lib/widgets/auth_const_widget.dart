// widgets/Auth_const_widget.dart

import 'package:flutter/material.dart';
import 'package:store_appy/constant/constant_colors.dart';

class ConstAuth extends StatelessWidget {
  final String text;
  const ConstAuth({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12.5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: secondarytextColor,
          ),
        ),
        const SizedBox(
          height: 12.5,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 45,
        ),
      ],
    );
  }
}

class ConstEndText extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const ConstEndText({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Don’t have an acoount ?",
            style: TextStyle(color: secondarytextColor, fontSize: 16),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
