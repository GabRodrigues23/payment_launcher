import 'dart:io';

import 'package:flutter/material.dart';
import 'package:payment_launcher/core/constants/app_colors.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/setup/setup_get_it_injector.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = getIt<ThemeService>();

    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeService.themeMode,
      builder: (context, mode, _) {
        return Drawer(
          elevation: 0,
          backgroundColor: mode == ThemeMode.light
              ? Color(0xFFFFFFFF)
              : Color(0xFF1E1E2D),
          child: Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.appPrimaryColor, Color(0xFF4438B0)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white24,
                      child: Icon(
                        Icons.payments_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Payment Launcher',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              _menuItem(
                icon: Icons.history_rounded,
                title: 'Histórico de Transações',
                color: mode == ThemeMode.light
                    ? Color(0xFF000000)
                    : Color(0xFFFFFFFF),
                onTap: () {},
              ),

              _menuItem(
                icon: Icons.receipt_long_rounded,
                title: 'Logs',
                color: mode == ThemeMode.light
                    ? Color(0xFF000000)
                    : Color(0xFFFFFFFF),
                onTap: () {},
              ),

              _menuItem(
                icon: Icons.dns_rounded,
                title: 'Conectar Servidor',
                color: mode == ThemeMode.light
                    ? Color(0xFF000000)
                    : Color(0xFFFFFFFF),
                onTap: () {},
              ),

              const Spacer(),

              const Divider(color: Colors.white12, indent: 16, endIndent: 16),

              _menuItem(
                icon: Icons.logout_rounded,
                title: 'Sair',
                onTap: () => exit(0),
                color: Colors.redAccent,
              ),

              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  static Widget _menuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color color = Colors.white,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onTap,
          hoverColor: const Color(0x1A8E8E8E),
          splashColor: const Color(0x1A8E8E8E),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Icon(icon, color: color, size: 22),

                const SizedBox(width: 16),

                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
