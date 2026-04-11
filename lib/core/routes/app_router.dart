import 'package:go_router/go_router.dart';
import 'package:payment_launcher/core/constants/routes.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/features/home/view/home_page.dart';
import 'package:payment_launcher/features/payment/view/payment_page.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';
import 'package:payment_launcher/features/settings/view/settings_page.dart';

class AppRouter {
  final ThemeService themeService;
  final SettingsService settingsService;
  AppRouter(this.themeService, this.settingsService);

  late final GoRouter router = GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        path: Routes.home,
        name: 'home',
        builder: (context, state) => HomePage(themeService: themeService),
      ),
      GoRoute(
        path: Routes.settings,
        name: 'settings',
        builder: (context, state) =>
            SettingsPage(settingsService: settingsService),
      ),
      GoRoute(
        path: Routes.payment,
        name: 'payment',
        builder: (context, state) => PaymentPage(themeService: themeService),
      ),
    ],
  );
}
