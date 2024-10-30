import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/authentication/data/models/auth_response_model/auth_response_model.dart';
import 'package:wallet_app/features/authentication/data/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;
//Mostafa Test AND MOHAMED AMR
  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    //Loading
    await authRepo.login(email: email, password: password).fold((failure) {
      //failed to login
      emit(LoginFailure(failure.errMessage));
    }, (success) {
      //succeded to login
      emit(LoginSuccess(AuthResponseModel(
          status: success.status, token: success.token, data: success.data)));
    });
  }
}
