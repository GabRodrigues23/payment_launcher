import 'package:go_router/go_router.dart';
import 'package:payment_launcher/core/constants/routes.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(path: Routes.home, name: 'home'),
      GoRoute(path: Routes.settings, name: 'settings'),
      GoRoute(path: Routes.payment, name: 'payment'),
    ],
  );
}
