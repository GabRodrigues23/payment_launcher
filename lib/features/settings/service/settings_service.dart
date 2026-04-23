import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  static const _keyBaseUrl = 'base_url';
  static const _keyUsername = 'username';
  static const _keyPassword = 'password';

  static final SettingsService _instance = SettingsService._internal();
  factory SettingsService() => _instance;
  SettingsService._internal();

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get baseUrl =>
      _prefs.getString(_keyBaseUrl) ?? 'http://localhost:9050';
  String get username => _prefs.getString(_keyUsername) ?? 'admin';
  String get password => _prefs.getString(_keyPassword) ?? '1234';

  Future<void> setServerUrl(String value) async {
    final cleanUrl = value.endsWith('/')
        ? value.substring(0, value.length - 1)
        : value;
    await _prefs.setString(_keyBaseUrl, cleanUrl);
  }
}
