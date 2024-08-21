import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/custom_textfield.dart';

class TextFieldsSection extends StatelessWidget {
  const TextFieldsSection({super.key});
  final String profileAssetName = 'assets/images/profile.svg';
  final String smsAssetName = 'assets/images/sms.svg';
  final String keyAssetName = 'assets/images/key-square.svg';
  final String eyeAssetName = 'assets/images/Eye-slash.svg';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 26,
        ),
        CustomTextfield(
            hintText: 'Username', icon: SvgPicture.asset(profileAssetName)),
        CustomTextfield(
            hintText: 'Email', icon: SvgPicture.asset(smsAssetName)),
        CustomTextfield(
          hintText: 'Password',
          icon: SvgPicture.asset(keyAssetName),
          suffixIcon: const Icon(Icons.visibility_off_outlined,
              color: Color(0xff828282)),
        ),
      ],
    );
  }
}
