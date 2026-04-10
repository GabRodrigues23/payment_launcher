import 'package:flutter/widgets.dart';
import 'package:payment_launcher/core/routes/build_app.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';
import 'package:payment_launcher/setup/setup_get_it_injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetItInjector();
  await getIt<SettingsService>().init();

  runApp(const BuildApp());
}
