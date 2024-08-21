import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/styles.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/register_title_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/shadowed_button.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/submit_data_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/text_fields_section.dart';

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
          const TextFieldsSection(),
          SubmitDataSection(
            text: 'Register',
            richText: RichText(
              text: TextSpan(
                text: "You have an account ?",
                style: Styles.textstyle13,
                children: <TextSpan>[
                  TextSpan(
                      text: ' Login',
                      style: Styles.textstyle13
                          .copyWith(color: const Color(0xff81C2FF))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
