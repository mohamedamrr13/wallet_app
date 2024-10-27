import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/utils/assets.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/custom_textfield.dart';

class LoginTextfieldSection extends StatefulWidget {
  const LoginTextfieldSection({super.key});

  @override
  State<LoginTextfieldSection> createState() => _LoginTextfieldSectionState();
}

class _LoginTextfieldSectionState extends State<LoginTextfieldSection> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextfield(
            hintText: 'Username',
            icon: SvgPicture.asset(AssetData.profileAssetName)),
        CustomTextfield(
          obscure: obscure ? true : false,
          hintText: 'Password',
          icon: SvgPicture.asset(AssetData.keyAssetName),
          suffixIcon: IconButton(
              onPressed: () => {
                    setState(() {
                      obscure = !obscure;
                    })
                  },
              icon: obscure
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
              color: const Color(0xff828282)),
        ),
      ],
    );
  }
}
