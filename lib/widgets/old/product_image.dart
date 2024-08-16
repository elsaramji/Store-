// widgets/products/product_image.dart
import 'package:flutter/material.dart';
import 'package:store_appy/constant/screen_Size_contorl.dart';

class ImageProduct extends StatelessWidget {
  final String image;
  final double highet,width;
  const ImageProduct({
    required this.image,
    required this.highet,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
        width: Sizer.percentWidth(context: context, percent: width),
        height: Sizer.percentHeight(context: context, percent: highet),
        image);
  }
}
