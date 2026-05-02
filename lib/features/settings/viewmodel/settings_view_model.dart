import 'package:payment_launcher/features/settings/interface/settings_repository_interface.dart';

class SettingsViewModel {
  final SettingsRepositoryInterface repository;

  SettingsViewModel(this.repository);

  Future<void> save(String url, String user, String pass) async {
    await repository.saveSettings(url, user, pass);
  }

  String getInitialUrl() => repository.getBaseUrl();
  String getInitialUsername() => repository.getUsername();
  String getInitialPassword() => repository.getPassword();

  Future<void> status(String url, String user, String pass) async {
    await repository.status(url, user, pass);
  }
}
