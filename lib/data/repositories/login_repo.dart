import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:newproject/data/auth_services/api_client.dart';
import 'package:newproject/data/models/error_response_model.dart';
import 'package:newproject/presentation/constants/api_constants.dart';

import '../models/login_response_model.dart';

final ApiClient _apiClient = ApiClient();

class AuthRepo {
  Future<dynamic> register({
    String? userName,
    String? email,
    String? password,
    required Function onSuccess,
    required Function onError,
  }) async {
    await _apiClient.post(postUrl: ApiConstants.login, body: {"username": userName, "email": email, "password": password}).then((value) {
      if (value.statusCode == 200) {
        onSuccess();
        print('Success');
        return loginResponseModelFromJson(jsonDecode(value.body));
      } else {
        onError();
        print('error:${value.statusCode}');
        return errorResponseModelFromJson(value.body);
      }
    });
  }

  Future<dynamic> login({
    String? userName,
    String? email,
    String? password,
    required Function onSuccess,
    required Function onError,
  }) async {
    await _apiClient.post(postUrl: ApiConstants.login, body: {"email": email, "password": password}).then((value) {
      onSuccess();
      print('Success');
      return loginResponseModelFromJson(jsonDecode(value));
    });
  }
}
