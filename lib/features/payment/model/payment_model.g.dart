// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      referenceId: DateTime.parse(json['referenceId'] as String),
      type: $enumDecode(_$PaymentTypesEnumMap, json['type']),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'referenceId': instance.referenceId.toIso8601String(),
      'type': _$PaymentTypesEnumMap[instance.type]!,
      'amount': instance.amount,
    };

const _$PaymentTypesEnumMap = {
  PaymentTypes.credit: 'credit',
  PaymentTypes.debit: 'debit',
  PaymentTypes.pix: 'pix',
};
