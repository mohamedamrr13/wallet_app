import 'package:flutter/material.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpViewBody(),
    );
  }
}
