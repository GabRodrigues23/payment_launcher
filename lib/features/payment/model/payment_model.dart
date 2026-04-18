import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payment_launcher/shared/enum/payment_types.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
abstract class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required PaymentTypes type,
    required String referenceId,
    required double amount,
    @Default(1) int? installments,
    @Default('single') String? installmentType,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
