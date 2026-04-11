import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:payment_launcher/core/constants/app_colors.dart';
import 'package:payment_launcher/core/routes/app_router.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';

class BuildApp extends StatelessWidget {
  const BuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = GetIt.I<ThemeService>();
    final settingsService = GetIt.I<SettingsService>();

    late final router = AppRouter(themeService, settingsService);

    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeService.themeMode,
      builder: (_, mode, _) {
        return MaterialApp.router(
          title: 'Payment Launcher',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Montserrat',
            useMaterial3: true,
            brightness: Brightness.light,
            colorSchemeSeed: AppColors.appPrimaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          darkTheme: ThemeData(
            fontFamily: 'Montserrat',
            useMaterial3: true,
            brightness: Brightness.dark,
            colorSchemeSeed: AppColors.appPrimaryColor,
            scaffoldBackgroundColor: Colors.black,
          ),
          themeMode: mode,
          routerConfig: router.router,
        );
      },
    );
  }
}
