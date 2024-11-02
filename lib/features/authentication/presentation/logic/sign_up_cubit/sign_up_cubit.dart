import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/authentication/data/models/auth_response_model/auth_response_model.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';
import 'package:wallet_app/features/authentication/data/repos/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  Future<void> signUp({required UserModel userModel}) async {
    emit(SignUpLoading());
    //Loading
    await authRepo.signUp(userModel: userModel).fold((failure) {
      //failed to register
      emit(
        SignUpFailure(failure.errMessage),
      );
    }, (success) {
      //succeded to register👌
      emit(SignUpSuccess(AuthResponseModel(
          status: success.status, token: success.token, data: success.data)));
    });
  }
}
