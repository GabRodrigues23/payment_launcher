import 'package:dart_tefip/dart_tefip.dart';
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

  Future<void> setUsername(String value) async {
    await _prefs.setString(_keyUsername, value);
  }

  Future<void> setPassword(String value) async {
    await _prefs.setString(_keyPassword, value);
  }

  Future<void> status(String url, String user, String pass) async {
    TefIP.baseUrl = url;
    TefIP.username = user;
    TefIP.password = pass;

    final tefIP = TefIP.instance;

    try {
      await tefIP.status.get();
    } on TefIPRequestException catch (e) {
      throw Exception('Erro na transação: ${e.message} (Cod: ${e.statusCode})');
    } on TefIPUnexpectedException catch (e) {
      throw Exception('Erro interno no pinpad: ${e.exception}');
    } catch (e) {
      throw Exception('Erro ao conectar com terminal TEF. Erro: $e');
    }
  }
}
