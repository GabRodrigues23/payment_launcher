abstract class SettingsRepositoryInterface {
  Future<void> saveSettings(String url, String user, String pass);
  String getBaseUrl();
  String getUsername();
  String getPassword();
  Future<void> status(String url, String user, String pass);
}
