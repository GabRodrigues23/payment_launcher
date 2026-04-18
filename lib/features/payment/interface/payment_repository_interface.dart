import 'package:payment_launcher/features/payment/model/payment_model.dart';

abstract class PaymentRepositoryInterface {
  Future<void> postTransaction(PaymentModel model);
}
