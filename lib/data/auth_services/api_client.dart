import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:newproject/presentation/constants/api_constants.dart';

class ApiClient {
  Future<Response> post(
      {required String? postUrl,
      Map<String, dynamic>? body,
      Map<String, String>? headers}) async {

    headers?.addAll({"Content-Type": "application/json"});
    final response = await http.post(
        Uri.parse("${ApiConstants.BASE_URL}$postUrl"),
        body: jsonEncode(body),
        headers: headers).then((value) {
          print('url=${Uri.parse("${ApiConstants.BASE_URL}$postUrl")}');
          print('body = $body');
          print('headers = $headers');
    });
    return response;
  }
}
