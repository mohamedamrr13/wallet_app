import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/utils/approuter.dart';
import 'package:wallet_app/core/utils/assets.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/custom_textfield.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/login_title_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/shadowed_button.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/submit_data_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const LoginTitleSection(),
          const ShadowedButton(),
          const SizedBox(height: 38),
          CustomTextfield(
              hintText: 'Username',
              icon: SvgPicture.asset(AssetData.profileAssetName)),
          CustomTextfield(
            obscure: true,
            hintText: 'Password',
            icon: SvgPicture.asset(AssetData.keyAssetName),
            suffixIcon: const Icon(Icons.visibility_off_outlined,
                color: Color(0xff828282)),
          ),
          SubmitDataSection(
            title: 'Dont have an account yet ?',
            subtitle: ' Sign Up',
            buttonText: 'Login',
            onTap: () {
              GoRouter.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
