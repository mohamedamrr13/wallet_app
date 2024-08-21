import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/styles.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.hintText,
      required this.icon,
      this.suffixIcon,
      this.obscure = false});
  final String hintText;
  final Widget icon;
  final Widget? suffixIcon;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.5, vertical: 10),
      child: TextField(
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
            )),
      ),
    );
  }
}
