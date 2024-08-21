import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/utils/approuter.dart';
import 'package:wallet_app/core/utils/styles.dart';

class SubmitDataSection extends StatelessWidget {
  const SubmitDataSection(
      {super.key, required this.richText, required this.text});
  final RichText richText;
  final String text;
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
                text,
                style: Styles.textstyle18,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            context.go(AppRouter.loginView);
          },
          child: Padding(
              padding: const EdgeInsets.only(top: 10.0), child: richText),
        )
      ],
    );
  }
}
