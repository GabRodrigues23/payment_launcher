import 'package:dart_tefip/dart_tefip.dart';
import 'package:payment_launcher/shared/enum/payment_type.dart';

extension PaymentTypeTefIp on PaymentType {
  TefIPTransactionType get toTefIpType {
    switch (this) {
      case PaymentType.pix:
        return TefIPTransactionType.pix;
      case PaymentType.credit:
        return TefIPTransactionType.credit;
      case PaymentType.debit:
        return TefIPTransactionType.debit;
      case PaymentType.unknown:
        throw Exception('Tipo de pagametno TEF inválido ou desconhecido');
    }
  }
}
