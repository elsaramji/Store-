import 'package:flutter/material.dart';
import 'package:store_appy/constant/context_ButtonStyle.dart';
import 'package:store_appy/screens/login_screen.dart';
import 'package:store_appy/widgets/Auth_const_widget.dart';
import 'package:store_appy/widgets/auth_text_filed.dart';
import 'package:store_appy/widgets/buttons_child.dart';
import 'package:store_appy/widgets/colorfulButton.dart';
import 'package:store_appy/widgets/normal_filed.dart';

class SignupScreenWidgets extends StatelessWidget {
  const SignupScreenWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ConstAuth(
                text: "Sign Up",
              ),
              TextfiledNormal(
                  title: "Name",
                  hints: "Mahmoud Ahmed Elsarameji",
                  onChanged: (value) {}),
              const SizedBox(
                height: 25,
              ),
              const AuthTextFiled(),
              Container(
                  padding: const EdgeInsets.only(top: 35),
                  margin: const EdgeInsets.all(8),
                  child: ColorfulButton(
                      onPressed: () {},
                      style: ColorfulButtonStyle.colorfulStyle(),
                      child: const LoginButtonChild(text: "Sign Up"))),
              ConstEndText(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                text: "Sign in",
              )
            ],
          ),
        ),
      ),
    );
  }
}