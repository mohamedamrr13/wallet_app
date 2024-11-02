import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:wallet_app/core/networking/api_constants.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';

class ApiService {
  late final Dio _dio;

  ApiService() {
    _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 50),
      headers: {
        'Content-Type': 'application/json',
      },
    ));

    // Optionally, add interceptors here (e.g., for logging or adding tokens).
    _dio.interceptors.add(PrettyDioLogger(responseBody: true));
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint, required Map<String, dynamic> data}) async {
    var response = await _dio.post('${ApiConstants.baseUrl}$endPoint',
        data: json.encode(data),
        options: Options(contentType: 'application/json'));

    return response.data;
  }

  void addPrettyDioLogger() {
    _dio.interceptors.add(PrettyDioLogger());
  }
}
