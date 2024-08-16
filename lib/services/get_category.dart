// services/get_category.dart

import '../Api/api_services.dart';

class GetCategory {
  static Future<List<String>> getCategory() async {
    List<dynamic> categoryapi = await ApiServices.getRequest(
        url: "https://fakestoreapi.com/products/categories");
    List<String> category = [];
    for (var element in categoryapi) {
      category.add(element.toString());
    }
    return category;
  }
}
