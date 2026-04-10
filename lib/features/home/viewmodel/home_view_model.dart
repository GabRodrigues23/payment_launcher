import 'package:get_it/get_it.dart';
import 'package:payment_launcher/core/services/theme_service.dart';

class HomeViewModel {
  final _themeService = GetIt.I<ThemeService>();

  void toggleTheme() {
    _themeService.toggleTheme();
  }
}
