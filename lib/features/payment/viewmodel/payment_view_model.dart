import 'package:payment_launcher/features/payment/interface/payment_repository_interface.dart';
import 'package:payment_launcher/features/payment/model/payment_model.dart';
import 'package:payment_launcher/shared/enum/payment_types.dart';

class PaymentViewModel {
  final PaymentRepositoryInterface repository;

  PaymentViewModel(this.repository);

  Future<void> newTransaction(
    PaymentTypes type,
    String referenceId,
    double amount,
    int? installments,
    String? installmentsType,
  ) async {
    final model = PaymentModel(
      type: type,
      referenceId: referenceId,
      amount: amount,
    );

    await repository.postTransaction(model);
  }
}
