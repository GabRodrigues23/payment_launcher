import 'package:payment_launcher/features/payment/model/payment_model.dart';
import 'package:payment_launcher/shared/enum/payment_types.dart';

class PaymentDto {
  final PaymentTypes type;
  final String referenceId;
  final double amount;
  final int? installments;
  final String? installmentType;

  PaymentDto({
    required this.type,
    required this.referenceId,
    required this.amount,
    required this.installments,
    required this.installmentType,
  });

  Map<String, dynamic> toJson() {
    return {
      "tPag": type,
      "referenceId": referenceId,
      "amount": amount,
      "installments": installments ?? 1,
      "installmentType": installmentType ?? 'single',
    };
  }

  factory PaymentDto.fromModel(PaymentModel model) {
    return PaymentDto(
      type: model.type,
      referenceId: model.referenceId,
      amount: model.amount,
      installments: model.installments,
      installmentType: model.installmentType,
    );
  }
}
