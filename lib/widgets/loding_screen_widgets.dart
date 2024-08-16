// widgets/loding_screen_widgets.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:store_appy/constant/constant_colors.dart';
import 'package:store_appy/constant/context_ButtonStyle.dart';
import 'package:store_appy/constant/screen_Size_contorl.dart';
import 'package:store_appy/screens/welcome_screen.dart';
import 'package:store_appy/widgets/boxButton.dart';
import 'package:store_appy/widgets/colorfulButton.dart';

class LodingScreenWidgets extends StatelessWidget {
  const LodingScreenWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Logo.png",
              width: Sizer.percentWidth(context: context, percent: 40),
              height: Sizer.percentHeight(context: context, percent: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorfulButton(
                    onPressed: () {},
                    style: ColorfulButtonStyle.flatButton(),
                    child: const Row(
                      children: [
                        Icon(Icons.admin_panel_settings_rounded),
                        Text(
                          "Admin Auth",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    )),
                ColorfulButton(
                    onPressed: () {
                      Navigator.pushNamed(context, WelcomeScreen.id);
                    },
                    style: ColorfulButtonStyle.flatButton(),
                    child: const Row(
                      children: [
                        Icon(Icons.person_add_rounded),
                        Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
