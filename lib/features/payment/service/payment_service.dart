import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';

class PaymentService {
  final Dio dio;
  final SettingsService settings;

  PaymentService(this.dio, this.settings);

  Future<void> postTransaction(Map<String, dynamic> body) async {
    final baseUrl = settings.serverUrl;

    try {
      final response = await dio.post(
        '$baseUrl/transaction',
        data: {jsonEncode(body)},
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw Exception('Erro ao criar Transação');
      }
    } catch (e) {
      throw Exception('Erro ao conectar no Servidor');
    }
  }
}
