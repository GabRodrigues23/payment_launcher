import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  static const _keyServerUrl = 'server_url';

  static final SettingsService _instance = SettingsService._internal();
  factory SettingsService() => _instance;
  SettingsService._internal();

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get serverUrl =>
      _prefs.getString(_keyServerUrl) ?? 'http://localhost:9050';

  Future<void> setServerUrl(String value) async {
    final cleanUrl = value.endsWith('/')
        ? value.substring(0, value.length - 1)
        : value;
    await _prefs.setString(_keyServerUrl, cleanUrl);
  }
}
