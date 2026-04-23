import 'package:dart_tefip/dart_tefip.dart';
import 'package:payment_launcher/features/payment/model/payment_model.dart';

abstract class PaymentRepositoryInterface {
  Future<TransactionResponseModel> postTransaction(PaymentModel model);
}
