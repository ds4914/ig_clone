import 'dart:convert';

import 'package:http/http.dart';
import 'package:newproject/presentation/constants/api_constants.dart';

class ApiClient {
  Client _client = Client();
  dynamic post({required String? postUrl, Map<String, dynamic>? body, Map<String, String>? headers,required Function onSuccess,required Function onError}) async {
    try {
      final response =
      await _client.post(Uri.parse("${ApiConstants.BASE_URL}$postUrl"), body: jsonEncode(body), headers: {"Content-Type": "application/json"});
      print('resonse${response.body}');
      if (response.statusCode == 200) {
        onSuccess();
        return response.body;
      }
      else{
        onError();
        return response.body;
      }
    } catch (e) {
      print('Error=>$e');
    }
  }
}
