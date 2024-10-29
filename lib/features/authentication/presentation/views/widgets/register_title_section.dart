import 'package:flutter/material.dart';
import 'package:wallet_app/core/theming/styles.dart';

class RegisterTitleSection extends StatelessWidget {
  const RegisterTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 90,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 46.5),
          child: Center(
            child: Text(
              'Immediately feel the \n ease of transacting just \n by registering',
              style: Styles.textstyle24,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 64,
        ),
        Center(
          child: Text(
            'Sign up with',
            style: Styles.textstyle13,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 22,
        ),
      ],
    );
  }
}
