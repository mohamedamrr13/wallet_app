import 'package:wallet_app/features/authentication/data/models/user_model.dart';

class AuthResponseModel {
  String status;
  String token;
  UserModel user;

  AuthResponseModel(
      {required this.status, required this.token, required this.user});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(
        status: json['status'] as String,
        token: json['token'] as String,
        user: UserModel.fromJson(json['data']['user']));
  }
}
