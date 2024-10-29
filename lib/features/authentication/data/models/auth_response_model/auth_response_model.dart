import 'data.dart';

class AuthResponseModel {
  String? status;
  String? token;
  Data? data;

  AuthResponseModel({this.status, this.token, this.data});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(
      status: json['status'] as String?,
      token: json['token'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'token': token,
        'data': data?.toJson(),
      };
}
