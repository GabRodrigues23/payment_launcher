import 'package:payment_launcher/features/settings/interface/settings_repository_interface.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';

class SettingsRepository extends SettingsRepositoryInterface {
  final SettingsService service;

  SettingsRepository(this.service);

  @override
  Future<void> saveSettings(String url, String user, String pass) async {
    await service.setServerUrl(url);
    await service.setUsername(user);
    await service.setPassword(pass);
  }

  @override
  String getBaseUrl() => service.baseUrl;

  @override
  String getUsername() => service.username;

  @override
  String getPassword() => service.password;

  @override
  Future<void> status(String url, String user, String pass) async {
    await service.status(url, user, pass);
  }
}
