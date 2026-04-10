import 'package:go_router/go_router.dart';
import 'package:payment_launcher/core/constants/routes.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/features/home/view/home_page.dart';

class AppRouter {
  final ThemeService themeService;
  AppRouter(this.themeService);

  late final GoRouter router = GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        path: Routes.home,
        name: 'home',
        builder: (context, state) => HomePage(themeService: themeService),
      ),
      // GoRoute(path: Routes.settings, name: 'settings'),
      // GoRoute(path: Routes.payment, name: 'payment'),
    ],
  );
}
