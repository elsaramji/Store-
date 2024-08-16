// widgets/welcom_screen_widgets.dart
import 'package:flutter/material.dart';
import 'package:store_appy/screens/login_screen.dart';
import 'package:store_appy/screens/signup_screen.dart';
import 'package:store_appy/widgets/boxButton.dart';
import 'package:store_appy/widgets/colorfulButton.dart';
import 'package:store_appy/widgets/welecom_const_widget.dart';

import '../constant/context_ButtonStyle.dart';
import 'buttons_child.dart';

class WelcomeScreenWidgets extends StatelessWidget {
  const WelcomeScreenWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const WelecomConstWidget(),
                BoxButton(
                  child: ColorfulButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    style: ColorfulButtonStyle.colorfulStyle(),
                    child: const LoginButtonChild(
                      text: "Login",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                BoxButton(
                    child: ColorfulButton(
                        style: ColorfulButtonStyle.textButtonStyle(),
                        onPressed: () {
                          Navigator.pushNamed(context, SingupScreen.id);
                        },
                        child: const TextButtonsChild(
                          text: "Sign Up",
                        ))),
              ]),
        ),
      ),
    );
  }
}