import 'package:flutter/material.dart';
import 'package:store_appy/widgets/normal_filed.dart';
import 'package:store_appy/widgets/pasword_filed.dart';

class AuthTextFiled extends StatelessWidget {
  const AuthTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextfiledNormal(
            title: "Email", hints: "email@domain.com", onChanged: (value) {}),
        const SizedBox(
          height: 25,
        ),
        TextfiledPassword(
            onChanged: (value) {},
            onValied: (value) {
              return null;
            }),
      ],
    );
  }
}
