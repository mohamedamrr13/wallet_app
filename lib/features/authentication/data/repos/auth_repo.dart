import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:wallet_app/core/networking/api_constants.dart';
import 'package:wallet_app/core/networking/api_service.dart';
import 'package:wallet_app/core/networking/failure.dart';
import 'package:wallet_app/features/authentication/data/models/auth_response_model/auth_response_model.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';

class AuthRepo {
  final ApiService _apiService;
  AuthRepo(this._apiService);
  Future<Either<Failure, AuthResponseModel>> signUp(
      {required UserModel userModel}) async {
    try {
      var response =
          await _apiService.post(endPoint: ApiConstants.signUpEndPoint, data: {
        "firstName": userModel.firstName,
        "lastName": userModel.lastName,
        "email": userModel.email,
        "role": 'parent',
        "address": 'Alexandria, Egypt',
        "phoneNumber": '01247896637',
        "gender": 'male',
        "password": userModel.password,
        "passwordConfirm": userModel.password
      });
      return Right(AuthResponseModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.from(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  Future<Either<Failure, AuthResponseModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      var response =
          await _apiService.post(endPoint: ApiConstants.loginEndPoint, data: {
        "email": email,
        "password": password,
      });
      return Right(AuthResponseModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.from(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
