import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/features/payment/interface/payment_repository_interface.dart';
import 'package:payment_launcher/features/payment/repository/payment_repository.dart';
import 'package:payment_launcher/features/payment/service/payment_service.dart';
import 'package:payment_launcher/features/payment/viewmodel/payment_view_model.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';

final getIt = GetIt.instance;

void setupGetItInjector() {
  if (!getIt.isRegistered<ThemeService>()) {
    getIt.registerSingleton<ThemeService>(ThemeService());
  }
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<SettingsService>(() => SettingsService());

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
