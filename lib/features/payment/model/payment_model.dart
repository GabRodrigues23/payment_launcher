import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payment_launcher/shared/enum/payment_types.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
abstract class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required PaymentTypes type,
    required DateTime referenceId,
    required double amount,
    int? installments,
    String? installmentType,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
