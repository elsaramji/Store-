import 'package:flutter/material.dart';

class ColorfulButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;

  const ColorfulButton({
    required this.child,
    required this.onPressed,
    @required this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: onPressed,
      child: child,
    );
  }
}