// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      type: $enumDecode(_$PaymentTypesEnumMap, json['type']),
      referenceId: json['referenceId'] as String,
      amount: (json['amount'] as num).toDouble(),
      installments: (json['installments'] as num?)?.toInt() ?? 1,
      installmentType: json['installmentType'] as String? ?? 'single',
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'type': _$PaymentTypesEnumMap[instance.type]!,
      'referenceId': instance.referenceId,
      'amount': instance.amount,
      'installments': instance.installments,
      'installmentType': instance.installmentType,
    };

const _$PaymentTypesEnumMap = {
  PaymentType.credit: 'credit',
  PaymentType.debit: 'debit',
  PaymentType.pix: 'pix',
  PaymentType.unknown: 'unknown',
};
