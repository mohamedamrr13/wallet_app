import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/custom_textfield.dart';

class RegisterTextFieldsSection extends StatefulWidget {
  const RegisterTextFieldsSection({super.key});

  @override
  State<RegisterTextFieldsSection> createState() =>
      _RegisterTextFieldsSectionState();
}

class _RegisterTextFieldsSectionState extends State<RegisterTextFieldsSection> {
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
              hintText: 'First Name', icon: SvgPicture.asset(profileAssetName)),
        ),
        CustomTextfield(
            hintText: 'Last Name', icon: SvgPicture.asset(profileAssetName)),
        CustomTextfield(
            hintText: 'Email', icon: SvgPicture.asset(smsAssetName)),
        CustomTextfield(
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
