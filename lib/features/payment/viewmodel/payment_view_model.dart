import 'package:dart_tefip/dart_tefip.dart';
import 'package:flutter/material.dart';
import 'package:payment_launcher/features/payment/interface/payment_repository_interface.dart';
import 'package:payment_launcher/features/payment/model/payment_model.dart';
import 'package:payment_launcher/shared/enum/payment_type.dart';

class PaymentViewModel {
  final PaymentRepositoryInterface repository;

  PaymentViewModel(this.repository);

  Future<bool> newTransaction(
    PaymentType type,
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

    final TransactionResponseModel response = await repository.postTransaction(
      model,
    );

    debugPrint(
      "Retorno TEFIP -> cAut: ${response.cAut} | txid: ${response.txid} | msg: ${response.message}",
    );

    final bool pixApproved =
        (response.txid != null && response.txid!.isNotEmpty);
    final bool cardApproved =
        (response.cAut != null && response.cAut!.isNotEmpty);
    final bool hasProof = (response.nsu != null && response.nsu!.isNotEmpty);

    return pixApproved | cardApproved | hasProof;
  }
}
