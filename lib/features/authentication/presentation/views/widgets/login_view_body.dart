import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/login_textfield_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/login_title_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/shadowed_button.dart';
import 'package:wallet_app/core/widgets/submit_data_section.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const LoginTitleSection(),
            const ShadowedButton(),
            const SizedBox(height: 38),
            const LoginTextfieldSection(),
            SubmitDataSection(
              title: 'Dont have an account yet ?',
              subtitle: ' Sign Up',
              buttonText: 'Login',
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  setState(() {});
                }
              },
              onTap: () {
                GoRouter.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
