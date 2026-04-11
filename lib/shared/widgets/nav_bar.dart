import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_launcher/core/constants/routes.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/setup/setup_get_it_injector.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final bool hasBack;

  const NavBar({super.key, required this.hasBack});

  @override
  Widget build(BuildContext context) {
    final themeService = getIt<ThemeService>();

    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeService.themeMode,
      builder: (context, mode, _) {
        return AppBar(
          leading: hasBack
              ? IconButton(
                  icon: Icon(Icons.keyboard_return_outlined, size: 20),
                  onPressed: () => context.go(Routes.home),
                )
              : null,
          title: const Text(
            'Payment Launcher',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 0.5,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                mode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
                size: 20,
              ),
              onPressed: () => themeService.toggleTheme(),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
