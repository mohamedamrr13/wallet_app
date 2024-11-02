import 'package:flutter/material.dart';
import 'package:wallet_app/core/theming/styles.dart';

class LoginTitleSection extends StatelessWidget {
  const LoginTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 110,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 33.5),
          child: Center(
            child: Text(
              'Welcome back \n to Tap\'n Pay Wallet',
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
