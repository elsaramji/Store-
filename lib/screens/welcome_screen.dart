// screens/welcome_screen.dart

import 'package:flutter/material.dart';
import 'package:store_appy/widgets/welcom_screen_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'welcome';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const WelcomeScreenWidgets();
  }
}
