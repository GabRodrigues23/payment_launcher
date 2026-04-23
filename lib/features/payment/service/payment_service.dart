import 'package:dart_tefip/dart_tefip.dart';
import 'package:payment_launcher/features/settings/service/settings_service.dart';

class PaymentService {
  final SettingsService settings;

  PaymentService(this.settings);

  Future<TransactionResponseModel> postTransaction(
    TransactionRequestModel request,
  ) async {
    TefIP.baseUrl = settings.baseUrl;
    TefIP.username = settings.username;
    TefIP.password = settings.password;

    final tefIp = TefIP.instance;

    try {
      final response = await tefIp.transaction.post(
        transactionRequest: request,
      );
      return response;
    } on TefIPRequestException catch (e) {
      throw Exception('Erro na transação: ${e.message} (Cod: ${e.statusCode})');
    } on TefIPUnexpectedException catch (e) {
      throw Exception('Erro interno no pinpad: ${e.exception}');
    } catch (e) {
      throw Exception('Erro ao conectar com terminal TEF. Erro: $e');
    }
  }
}
