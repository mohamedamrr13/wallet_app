import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:wallet_app/core/networking/api_constants.dart';
import 'package:wallet_app/core/networking/api_service.dart';
import 'package:wallet_app/core/networking/failure.dart';
import 'package:wallet_app/features/authentication/data/models/auth_response_model/auth_response_model.dart';

class AuthRepo {
  final ApiService _apiService;
  AuthRepo(this._apiService);
  Future<Either<Failure, AuthResponseModel>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    try {
      var response =
          await _apiService.post(endPoint: ApiConstants.signUpEndPoint, data: {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "role": 'N/A',
        "address": 'N/A',
        "phoneNumber": 'N/A',
        "gender": 'N/A',
        "password": password,
        "passwordConfirm": password
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
