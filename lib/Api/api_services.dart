// Api/api_services.dart

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_appy/Api/response.dart';

class ApiServices {
  /// Sends a GET request to the specified [url] and returns a list of dynamic objects.
  ///
  /// The [url] parameter is required and represents the URL to which the request will be sent.
  /// Returns a [Future] that resolves to a list of dynamic objects from the server response.
  static Future<List<dynamic>> getRequest({required String url}) async {
    Dio dio = Dio();
    final Response response = await dio.get(url);
    return Responser.retrunRespons(response);
  }

  /// Sends a POST request to the specified [url] with the given [body] and [token].
  ///
  /// The [url] parameter is required and represents the URL to which the request will be sent.
  /// The [body] parameter is required and represents the data to be sent in the request body.
  /// The [token] parameter is optional and represents the authorization token to be included in the request headers.
  ///
  /// Returns a [Future] that resolves to the response from the server.
  ///
  /// Throws an exception if the request fails.
  static Future<dynamic> postRequest(
      {required String url,
      required dynamic body,
      @required String? token}) async {
    Dio dio = Dio();
    Map<String, String> headers = {};
    //headers.addAll({"Content-Type": "application/json"});
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    final Response response =
        await dio.post(url, data: body, options: Options(headers: headers));
    return Responser.retrunRespons(response);
  }

  /// Sends a PUT request to the specified [url] with the given [body] and [token].
  ///
  /// The [url] parameter is required and represents the URL to which the request will be sent.
  /// The [body] parameter is required and represents the data to be sent in the request body.
  /// The [token] parameter is optional and represents the authorization token to be included in the request headers.
  ///
  /// Returns a [Future] that resolves to the response from the server.
  ///
  /// Throws an exception if the request fails.
  static Future<dynamic> putRequest(
      {required String url,
      required dynamic body,
      @required String? token}) async {
    // Create a Dio instance
    Dio dio = Dio();

    // Create a map to store the headers
    Map<String, String> headers = {};

    // If a token is provided, add the authorization header
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }

    // Send a POST request with the provided URL, body, and headers
    final Response response = await dio.post(
      url,
      data: body,
      options: Options(headers: headers),
    );

    // Return the response from the server
    return Responser.retrunRespons(response);
  }
}

