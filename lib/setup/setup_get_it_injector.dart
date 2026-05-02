import 'package:get_it/get_it.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/features/payment/interface/payment_repository_interface.dart';
import 'package:payment_launcher/features/payment/repository/payment_repository.dart';
import 'package:payment_launcher/features/payment/service/payment_service.dart';
import 'package:payment_launcher/features/payment/viewmodel/payment_view_model.dart';
import 'package:payment_launcher/features/settings/interface/settings_repository_interface.dart';
import 'package:payment_launcher/features/settings/repository/settings_repository.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';
import 'package:payment_launcher/features/settings/viewmodel/settings_view_model.dart';

final getIt = GetIt.instance;

void setupGetItInjector() {
  if (!getIt.isRegistered<ThemeService>()) {
    getIt.registerSingleton<ThemeService>(ThemeService());
  }

  getIt.registerLazySingleton<SettingsService>(() => SettingsService());

  getIt.registerLazySingleton<SettingsRepositoryInterface>(
    () => SettingsRepository(getIt<SettingsService>()),
  );

  getIt.registerLazySingleton<SettingsViewModel>(
    () => SettingsViewModel(getIt<SettingsRepositoryInterface>()),
  );
  getIt.registerLazySingleton<PaymentService>(
    () => PaymentService(getIt<SettingsService>()),
  );
  getIt.registerLazySingleton<PaymentRepositoryInterface>(
    () => PaymentRepository(getIt<PaymentService>()),
  );

  getIt.registerLazySingleton<PaymentViewModel>(
    () => PaymentViewModel(getIt<PaymentRepositoryInterface>()),
  );
}
