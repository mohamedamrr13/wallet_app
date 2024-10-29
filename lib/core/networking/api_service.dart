import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'http://kids-oasis-smti.onrender.com/';
  final Dio _dio;

  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint, required Map<String, dynamic> data}) async {
    var response = await _dio.post('$_baseUrl$endPoint',
        data: data, options: Options(contentType: 'application/json'));

    return response.data;
  }
}
