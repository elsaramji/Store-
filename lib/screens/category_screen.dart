// screens/category_screen.dart

import 'package:flutter/material.dart';
import 'package:store_appy/models/product.dart';
import 'package:store_appy/services/get_products.dart';
import 'package:store_appy/widgets/app_bar.dart';
import 'package:store_appy/widgets/old/product_gallery.dart';


class CategoryScreen extends StatelessWidget {
  static const String id = '/category-screen';
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String category = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppySharedWidget.appybar(),
      body: FutureBuilder(
          future: GetProducts.getProductsByCategory(category: category),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            List<Product> products = snapshot.data as List<Product>;
            return ProductsGallery(products: products);
          }),
    );
  }
}
