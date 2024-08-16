// widgets/login_screen_widget.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:store_appy/constant/context_ButtonStyle.dart';
import 'package:store_appy/screens/signup_screen.dart';
import 'package:store_appy/widgets/Auth_const_widget.dart';
import 'package:store_appy/widgets/auth_text_filed.dart';
import 'package:store_appy/widgets/buttons_child.dart';
import 'package:store_appy/widgets/colorfulButton.dart';

class LoginScreenWidgets extends StatelessWidget {
  const LoginScreenWidgets({
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
                text: "Login",
              ),
              const AuthTextFiled(),
              Container(
                  padding: const EdgeInsets.only(top: 35),
                  margin: const EdgeInsets.all(8),
                  child: ColorfulButton(
                      onPressed: () {
                        
                      },
                      style: ColorfulButtonStyle.colorfulStyle(),
                      child: const LoginButtonChild(text: "Login"))),
              ConstEndText(
                onPressed: () {
                  Navigator.pushNamed(context, SingupScreen.id);
                },
                text: "Sign Up",
              )
            ],
          ),
        ),
      ),
    );
  }
}
