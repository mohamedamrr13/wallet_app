import 'package:either_dart/either.dart';
import 'package:wallet_app/core/networking/failure.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';

abstract class AuthRepo {
  Either<Failure, UserModel> signUp(
      {required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String confirmPassword});

  Either<Failure, UserModel> login(
      {required String email, required String password});
}
