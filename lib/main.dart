import 'package:flutter/material.dart';
import 'package:wallet_app/core/routing/approuter.dart';

void main() {
  runApp(const MyWallet());
}

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Quicksand',
      ),
    );
  }
}
