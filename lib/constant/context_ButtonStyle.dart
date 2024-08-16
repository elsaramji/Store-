// constant/context_ButtonStyle.dart
import 'package:flutter/material.dart';
import 'package:store_appy/constant/constant_colors.dart';

class ColorfulButtonStyle {
  static ButtonStyle colorfulStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static ButtonStyle textButtonStyle() {
    return TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static ButtonStyle flatButton() {
    return ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      textStyle: TextStyle(color: Colors.white),
      iconColor: Colors.white,
    );
  }
}
