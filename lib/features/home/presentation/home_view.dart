import 'package:flutter/material.dart';
import 'package:wallet_app/core/theming/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        'Welcome to Tap\'n Pay Wallet',
        style: Styles.textstyle24,
      ),
    ));
  }
}
