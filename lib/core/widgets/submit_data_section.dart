import 'package:flutter/material.dart';
import 'package:wallet_app/core/theming/styles.dart';

class SubmitDataSection extends StatelessWidget {
  // Contains the Button and RichText for both authentication methods (Login,SignUP)

  const SubmitDataSection(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.switchOnTap,
      required this.onPressed});
  final String title;
  final String subtitle;
  final Widget buttonText;
  final GestureTapCallback switchOnTap;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 91.0),
          child: TextButton(
            style: TextButton.styleFrom(
                minimumSize: const Size(139, 63),
                backgroundColor: const Color(0xff5B259F),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: onPressed,
            child: Center(
              child: buttonText,
            ),
          ),
        ),
        GestureDetector(
          onTap: switchOnTap,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: RichText(
              text: TextSpan(text: title, style: Styles.textstyle13, children: [
                TextSpan(
                    text: subtitle,
                    style: Styles.textstyle13
                        .copyWith(color: const Color(0xff81C2FF)))
              ]),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
