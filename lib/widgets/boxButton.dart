// widgets/boxButton.dart

import 'package:flutter/material.dart' show BuildContext, Container, EdgeInsets, StatelessWidget, Widget;
import 'package:store_appy/constant/screen_Size_contorl.dart';

class BoxButton extends StatelessWidget {
  final Widget child;
  const BoxButton({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Sizer.percentWidth(context: context, percent: 20)),
      child: child,
    );
  }
}