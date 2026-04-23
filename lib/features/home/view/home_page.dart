import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:payment_launcher/core/constants/app_colors.dart';
import 'package:payment_launcher/core/constants/routes.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/shared/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  final ThemeService themeService;
  const HomePage({super.key, required this.themeService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(hasBack: false),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 40,
            children: [
              Lottie.asset(
                'assets/animations/home_animation.json',
                height: 180,
                repeat: true,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.appPrimaryColor,
                  minimumSize: const Size(250, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                  elevation: 4,
                ),
                child: const Text(
                  'Começar agora',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 0.5,
                  ),
                ),
                onPressed: () => context.go(Routes.payment),
              ),
              TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 4,
                  children: [
                    Icon(Icons.dns, color: AppColors.appPrimaryColor, size: 20),
                    Text(
                      ('Conectar Servidor'),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                onPressed: () => context.go(Routes.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
