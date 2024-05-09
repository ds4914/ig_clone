import 'dart:convert';
import 'dart:io';

import 'package:newproject/data/auth_services/api_client.dart';
import 'package:newproject/presentation/constants/api_constants.dart';

import '../models/login_response_model.dart';

final ApiClient _apiClient = ApiClient();

class AuthRepo {
  Future<LoginResponseModel?> register(
      {String? userName, String? email, String? password}) async {
    final loginResponseModel = await _apiClient.post(
        postUrl: ApiConstants.login,
        body: {
          "username": userName,
          "email": email,
          "password": password
        }).then((value) {
      if (value.statusCode == 200) {
        print('Success');
        return loginResponseModelFromJson(jsonDecode(value.body));
      } else {
        print('error:${value.statusCode}');
      }
    });
    return loginResponseModel;
  }

  Future<LoginResponseModel?> login(
      {String? userName, String? email, String? password}) async {
    final loginResponseModel = await _apiClient.post(
        postUrl: ApiConstants.login,
        body: {
          "email": email,
          "password": password
        }).then((value) {
      print('response = ${jsonDecode(value)}');
      return loginResponseModelFromJson(value);
    });
    return loginResponseModel;
  }
}
