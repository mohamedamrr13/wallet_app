import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/utils/approuter.dart';
import 'package:wallet_app/core/utils/styles.dart';

class SubmitDataSection extends StatelessWidget {
  const SubmitDataSection(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.onTap});
  final String title;
  final String subtitle;
  final String buttonText;
  final GestureTapCallback onTap;
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
            onPressed: () {},
            child: Center(
              child: Text(
                buttonText,
                style: Styles.textstyle18,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap,
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
        )
      ],
    );
  }
}
