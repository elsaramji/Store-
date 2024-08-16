// main.dart

import 'package:flutter/material.dart';
import 'package:store_appy/constant/constant_colors.dart';
import 'package:store_appy/models/product.dart';
import 'package:store_appy/models/rating.dart';
import 'package:store_appy/screens/category_screen.dart';
import 'package:store_appy/screens/loding_screen.dart';
import 'package:store_appy/screens/login_screen.dart';
import 'package:store_appy/screens/product_edit_screen.dart';
import 'package:store_appy/screens/product_veiw_screen.dart';
import 'package:store_appy/screens/products_screen.dart';
import 'package:store_appy/screens/signup_screen.dart';
import 'package:store_appy/screens/welcome_screen.dart';
import 'package:store_appy/widgets/old/product_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: appyThems(),
        initialRoute: LodingScreen.id,
        routes: {
          LodingScreen.id: (context) => const LodingScreen(),
          WelcomeScreen.id: (context) => const WelcomeScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          SingupScreen.id: (context) => const SingupScreen(),
          ProductsScreen.id: (context) => const ProductsScreen(),
          CategoryScreen.id: (context) => const CategoryScreen(),
          ProductVeiw.id: (context) => const ProductVeiw(),
          ProductEdit.id: (context) => const ProductEdit(),
        },
        home: LodingScreen());
  }

  ThemeData appyThems() {
    return ThemeData(
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: secondarytextColor,
            fontSize: 20,
          ),
          headlineMedium: TextStyle(
            color: secondarytextColor,
            fontSize: 20,
          ),
        ));
  }
}
