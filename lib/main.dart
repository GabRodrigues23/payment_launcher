import 'package:flutter/widgets.dart';
import 'package:payment_launcher/core/routes/build_app.dart';
import 'package:payment_launcher/setup/setup_get_it_injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetItInjector();
  runApp(const BuildApp());
}
