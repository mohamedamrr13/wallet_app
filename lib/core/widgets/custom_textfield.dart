import 'package:flutter/material.dart';
import 'package:wallet_app/core/theming/styles.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.hintText,
      required this.icon,
      this.suffixIcon,
      this.obscure = false,
      required this.textEditingController});
  final String hintText;
  final Widget icon;
  final Widget? suffixIcon;
  final bool obscure;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.5, vertical: 10),
      child: TextFormField(
        validator: (data) {
          if (data?.isEmpty ?? true) {
            return 'The $hintText is required.';
          }
          return null; // still gonna make it better
        },
        controller: textEditingController,
        obscureText: obscure,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                Styles.textstyle16.copyWith(color: const Color(0xff828282)),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: icon,
            ),
            suffixIcon: suffixIcon,
            fillColor: const Color(0xffF2F2F2),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Color(0xffF2F2F2))),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffF2F2F2)),
              borderRadius: BorderRadius.circular(15),
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Color(0xffF2F2F2)))),
      ),
    );
  }
}
