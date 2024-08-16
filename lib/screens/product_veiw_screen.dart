// screens/product_veiw_screen.dart

import 'package:flutter/material.dart';
import 'package:store_appy/constant/constant_colors.dart';
import 'package:store_appy/constant/context_ButtonStyle.dart';
import 'package:store_appy/constant/screen_Size_contorl.dart';
import 'package:store_appy/models/product.dart';
import 'package:store_appy/widgets/app_bar.dart';
import 'package:store_appy/widgets/buttons_child.dart';
import 'package:store_appy/widgets/colorfulButton.dart';

class ProductVeiw extends StatelessWidget {
  static const id = 'product-veiw';
  const ProductVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppySharedWidget.appybar(),
        body: ProductData(product: product));
  }
}

class ProductData extends StatelessWidget {
  const ProductData({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Sizer.percentHeight(context: context, percent: 90),
            padding: const EdgeInsets.all(15.5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(product.image),
                  )),
                  Text(
                    "${product.title.characters.take(20)}...",
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.price.toString() + r"$",
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: primaryColor),
                      ),
                      Text(
                        "  ${product.rating.rate}",
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: primaryColor),
                      ),
                    ],
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: secondarytextColor),
                  ),
                  Text(product.description!,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: Sizer.percentHeight(context: context, percent: 10),
            child: ColorfulButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  elevation: 0,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const LoginButtonChild(text: "Buy Now")),
          ),
        ],
      ),
    );
  }
}
