// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      type: $enumDecode(_$PaymentTypesEnumMap, json['type']),
      referenceId: DateTime.parse(json['referenceId'] as String),
      amount: (json['amount'] as num).toDouble(),
      installments: (json['installments'] as num?)?.toInt(),
      installmentType: json['installmentType'] as String?,
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'type': _$PaymentTypesEnumMap[instance.type]!,
      'referenceId': instance.referenceId.toIso8601String(),
      'amount': instance.amount,
      'installments': instance.installments,
      'installmentType': instance.installmentType,
    };

const _$PaymentTypesEnumMap = {
  PaymentTypes.credit: 'credit',
  PaymentTypes.debit: 'debit',
  PaymentTypes.pix: 'pix',
  PaymentTypes.unknown: 'unknown',
};
