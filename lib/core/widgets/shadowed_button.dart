import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/theming/styles.dart';

class ShadowedButton extends StatelessWidget {
  const ShadowedButton({super.key});
  final String assetName = 'assets/images/google.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: const Color(0xff000000).withOpacity(0.15),
            spreadRadius: 0,
            offset: const Offset(0, 2),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 90),
      width: 130,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child:
                    SvgPicture.asset(assetName, semanticsLabel: 'Google Logo'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 7.0),
                child: Text(
                  'Google',
                  style: Styles.textstyle16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
