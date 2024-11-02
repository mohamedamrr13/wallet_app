import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/helper/constants.dart';
import 'package:wallet_app/core/utils/assets.dart';
import 'package:wallet_app/core/widgets/custom_textfield.dart';

class SignUpTextFieldSection extends StatefulWidget {
  const SignUpTextFieldSection(
      {super.key,
      required this.firstNameController,
      required this.lastNameController,
      required this.emailController,
      required this.passwordController,
      required this.enabled});
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool enabled;
  @override
  State<SignUpTextFieldSection> createState() => _SignUpTextFieldSectionState();
}

class _SignUpTextFieldSectionState extends State<SignUpTextFieldSection> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 26,
        ),
        SizedBox(
          child: CustomTextfield(
              enabled: widget.enabled,
              textEditingController: widget.firstNameController,
              hintText: 'First Name',
              icon: SvgPicture.asset(AssetData.profileAssetName)),
        ),
        CustomTextfield(
          textEditingController: widget.lastNameController,
          hintText: 'Last Name',
          icon: SvgPicture.asset(AssetData.profileAssetName),
          enabled: widget.enabled,
        ),
        CustomTextfield(
            textEditingController: widget.emailController,
            hintText: 'Email',
            icon: SvgPicture.asset(AssetData.smsAssetName),
            enabled: widget.enabled),
        CustomTextfield(
          textEditingController: widget.passwordController,
          obscure: obscure ? true : false,
          hintText: 'Password',
          icon: SvgPicture.asset(
            AssetData.keyAssetName,
          ),
          enabled: widget.enabled,
          suffixIcon: IconButton(
              onPressed: () => {
                    setState(() {
                      obscure = !obscure;
                    })
                  },
              icon: obscure
                  ? const Icon(Icons.visibility_off)
                  : const Icon(
                      Icons.visibility,
                      color: Color(kPrimaryColor),
                    ),
              color: const Color(0xff828282)),
        ),
      ],
    );
  }
}
