import 'package:either_dart/src/either.dart';
import 'package:wallet_app/core/networking/failure.dart';
import 'package:wallet_app/core/networking/api_service.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';
import 'package:wallet_app/features/authentication/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Either<Failure, UserModel> signUp(
      {required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String confirmPassword}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Either<Failure, UserModel> login(
      {required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
