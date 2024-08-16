// services/get_products.dart

import 'package:store_appy/models/product.dart';
import 'package:store_appy/Api/api_services.dart';

class GetProducts {
  static List<Product> convertListProduct(List<dynamic> productsget) {
    List<Product> products = [];
    for (var element in productsget) {
      products.add(Product.fromJson(element));
    }
    return products;
    /**
     * in one line
     * List<Product> products = productsget.map((e) => Product.fromJson(e)).toList();
     */
  }

  static Future<List<Product>> getProducts() async {
    List<dynamic> productsget =
        await ApiServices.getRequest(url: "https://fakestoreapi.com/products");

    List<Product> products = convertListProduct(productsget);

    return products;
  }

  static Future<List<Product>> getProductsByCategory(
      {required String category}) async {
    List<dynamic> productsget = await ApiServices.getRequest(
        url: "https://fakestoreapi.com/products/category/$category");

    List<Product> products = convertListProduct(productsget);

    return products;
  }
}
