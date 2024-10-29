import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/widgets/custom_textfield.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';

class SignUpTextFieldSection extends StatefulWidget {
  const SignUpTextFieldSection({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.passwordController,
  });
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<SignUpTextFieldSection> createState() => _SignUpTextFieldSectionState();
}

class _SignUpTextFieldSectionState extends State<SignUpTextFieldSection> {
  final String profileAssetName = 'assets/images/profile.svg';

  final String smsAssetName = 'assets/images/sms.svg';

  final String keyAssetName = 'assets/images/key-square.svg';

  final String eyeAssetName = 'assets/images/Eye-slash.svg';

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
            controller: widget.firstNameController,
            hintText: 'First Name',
            icon: SvgPicture.asset(profileAssetName),
          ),
        ),
        CustomTextfield(
          controller: widget.lastNameController,
          hintText: 'Last Name',
          icon: SvgPicture.asset(profileAssetName),
        ),
        CustomTextfield(
          controller: widget.emailController,
          hintText: 'Email',
          icon: SvgPicture.asset(smsAssetName),
        ),
        CustomTextfield(
          controller: widget.passwordController,
          obscure: obscure ? true : false,
          hintText: 'Password',
          icon: SvgPicture.asset(keyAssetName),
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
