import 'dart:convert';

import 'package:http/http.dart';
import 'package:newproject/presentation/constants/api_constants.dart';

class ApiClient {
  Client _client = Client();
  dynamic post({
    required String? postUrl,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _client.post(
        Uri.parse("${ApiConstants.BASE_URL}$postUrl"),
        body: jsonEncode(body),
        headers: {"Content-Type": "application/json"},
      );
      print('url=>${ApiConstants.BASE_URL}$postUrl');
      print('body=>$body');
      print('headers=>$headers');
      print('resonse${response.body}');
      if (response.statusCode == 200) {
        return response.body;
      } else if (response.statusCode == 400) {
        return response.body;
      }
    } catch (e) {
      print('Error=>$e');
    }
  }
}
