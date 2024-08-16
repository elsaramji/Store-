// screens/loding_screen.dart
import 'package:flutter/material.dart';
import 'package:store_appy/widgets/loding_screen_widgets.dart';

class LodingScreen extends StatelessWidget {
  static const String id = "LodingScreen";
  const LodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LodingScreenWidgets();
  }
}
