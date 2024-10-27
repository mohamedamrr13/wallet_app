import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/utils/approuter.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/register_title_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/shadowed_button.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/submit_data_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/register_text_fields_section.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const RegisterTitleSection(),
          const ShadowedButton(),
          const RegisterTextFieldsSection(),
          SubmitDataSection(
            buttonText: 'Register',
            title: 'You have an account ?',
            subtitle: ' Login',
            onTap: () {
              context.push(AppRouter.loginView);
            },
          )
        ],
      ),
    );
  }
}
