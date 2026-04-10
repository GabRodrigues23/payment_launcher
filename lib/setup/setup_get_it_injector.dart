import 'package:get_it/get_it.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';

final getIt = GetIt.instance;

void setupGetItInjector() {
  if (!getIt.isRegistered<ThemeService>()) {
    getIt.registerSingleton<ThemeService>(ThemeService());
  }

  getIt.registerLazySingleton<SettingsService>(() => SettingsService());
}
