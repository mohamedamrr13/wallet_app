import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/theming/styles.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';
import 'package:wallet_app/features/authentication/presentation/logic/login_cubit/login_cubit.dart';
import 'package:wallet_app/features/authentication/presentation/logic/sign_up_cubit/sign_up_cubit.dart';

class HelperMethods {
  static void loginMethod(
    BuildContext context,
    GlobalKey<FormState> formkey,
    String email,
    String password,
  ) {
    if (formkey.currentState!.validate()) {
      BlocProvider.of<LoginCubit>(context)
          .login(email: email, password: password);
    }
  }

  static void signUpMethod(
    BuildContext context,
    GlobalKey<FormState> formkey,
    String firstName,
    String lastName,
    String email,
    String password,
  ) {
    if (formkey.currentState!.validate()) {
      BlocProvider.of<SignUpCubit>(context).signUp(
          userModel: UserModel(
              firstName: firstName,
              lastName: lastName,
              email: email,
              password: password,
              passwordConfirm: password));
    }
  }

  static void showSnackBar(BuildContext context, String $message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          $message,
          style: Styles.textstyle13,
        ),
      ),
    );
  }
}
