// services/response.dart
import 'package:dio/dio.dart';

class Responser {
  /// Returns the response data from the server.
  ///
  /// Takes a [Response] object as a parameter.
  ///
  /// Throws an [Exception] if the status code is not 200.
  ///
  /// Returns the response data if the status code is 200.
  static dynamic retrunRespons(Response<dynamic> response) {
    if (response.statusCode == 200) {
      print("Success");
      return response.data;
    } else if (response.statusCode == 404) {
      print("Not Found");
      throw Exception("Not Found");
    } else {
      print("Error");
      throw Exception("Error");
    }
  }
}
