import 'package:flutter/material.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/shared/widgets/nav_bar.dart';

class PaymentPage extends StatelessWidget {
  final ThemeService themeService;
  const PaymentPage({super.key, required this.themeService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const NavBar(hasBack: true));
  }
}
