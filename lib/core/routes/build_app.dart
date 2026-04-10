import 'package:flutter/material.dart';
import 'package:payment_launcher/core/routes/app_router.dart';

class BuildApp extends StatelessWidget {
  const BuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Payment Launcher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat', useMaterial3: true, colorSchemeSeed: const Color(0xFF180E6D)),
      routerConfig: AppRouter().router,
    );
  }
}
