// widgets/old/products_builder.dart
import 'package:flutter/material.dart';
import 'package:store_appy/models/product.dart';
import 'package:store_appy/services/get_products.dart';
import 'package:store_appy/widgets/old/product_gallery.dart';



class ProductsBuilder extends StatelessWidget {
  const ProductsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GetProducts.getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          List<Product> products = snapshot.data as List<Product>;
          return ProductsGallery(
            products: products,
          );
        });
  }
}
