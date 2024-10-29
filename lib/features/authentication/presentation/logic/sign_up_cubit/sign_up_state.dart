part of 'sign_up_cubit.dart';

sealed class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {
  final AuthResponseModel authResponseModel;
  const SignUpSuccess(this.authResponseModel);
}

final class SignUpFailure extends SignUpState {
  final String errMessage;
  const SignUpFailure(this.errMessage);
}
