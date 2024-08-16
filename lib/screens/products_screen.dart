// screens/products_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:store_appy/constant/constant_colors.dart';
import 'package:store_appy/constant/screen_Size_contorl.dart';
import 'package:store_appy/models/product.dart';
import 'package:store_appy/screens/category_screen.dart';
import 'package:store_appy/services/get_category.dart';
import 'package:store_appy/services/get_products.dart';
import 'package:store_appy/widgets/app_bar.dart';
import 'package:store_appy/widgets/old/product_box.dart';

class ProductsScreen extends StatelessWidget {
  static const String id = "ProductsScreen";
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppySharedWidget.appybar(),
      body: const Column(children: [
        Categories(),
      ]),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CategoriesBuilder(),
    );
  }
}

class CategoriesBuilder extends StatelessWidget {
  const CategoriesBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GetCategory.getCategory(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          List<String> categories = snapshot.data as List<String>;
          return ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CategoryListTitel(
                      categories: categories,
                      index: index,
                      onTap: () {
                        Navigator.pushNamed(context, CategoryScreen.id,
                            arguments: categories[index]);
                      },
                    ),
                    CategoryProductBuilder(
                        categories: categories, index: index),
                  ],
                );
              });
        });
  }
}

class CategoryProductBuilder extends StatelessWidget {
  const CategoryProductBuilder({
    super.key,
    required this.categories,
    required this.index,
  });

  final List<String> categories;
  final int index;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GetProducts.getProductsByCategory(category: categories[index]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            List<Product> products = [];
            for (var i = 0; i < snapshot.data!.length; i++) {
              products.add(snapshot.data![i]);
            }
            return SizedBox(
              height: Sizer.percentHeight(context: context, percent: 40),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return ProductBox(
                      product: products[index],
                    );
                  }),
            );
          } else {
            return const Center(
              child: Text("Something went wrong"),
            );
          }
        });
  }
}

class CategoryListTitel extends StatelessWidget {
  const CategoryListTitel({
    super.key,
    required this.categories,
    required this.index,
    required this.onTap,
  });

  final List<String> categories;
  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categories[index],
            style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
          ),
          TextButton(
            onPressed: onTap,
            style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              overlayColor: Colors.transparent,
            ),
            child: const Text("see all",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                    color: primaryColor)),
          ),
        ],
      ),
    );
  }
}
