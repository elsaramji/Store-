// widgets/welecom_const_widget.dart

import 'package:flutter/material.dart';
import 'package:store_appy/constant/screen_Size_contorl.dart';

class WelecomConstWidget extends StatelessWidget {
  const WelecomConstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welecome to Store",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Explore Us",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 50,
        ),
        Image.asset("assets/Image.png",
            height: Sizer.percentHeight(context: context, percent: 35),
            width: Sizer.percentWidth(context: context, percent: 100)),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
