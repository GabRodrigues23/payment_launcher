import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payment_launcher/shared/enum/payment_types.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
abstract class PaymentModel with _$PaymentModel {
  const factory PaymentModel({required DateTime referenceId, required PaymentTypes type, required double amount}) =
      _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);
}
