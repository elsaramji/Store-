// widgets/old/product_gallery.dart
import 'package:flutter/material.dart';
import 'package:store_appy/constant/screen_Size_contorl.dart';
import 'package:store_appy/models/product.dart';
import 'product_box.dart';

class ProductsGallery extends StatelessWidget {
  final List<Product> products;
  const ProductsGallery({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return ProductBox(
            product: products[index],
          );
        });
  }
}
