import 'package:dart_tefip/dart_tefip.dart';
import 'package:payment_launcher/features/payment/interface/payment_repository_interface.dart';
import 'package:payment_launcher/features/payment/model/payment_model.dart';
import 'package:payment_launcher/features/payment/service/payment_service.dart';
import 'package:payment_launcher/shared/extension/payment_type_tef_ip.dart';

class PaymentRepository implements PaymentRepositoryInterface {
  final PaymentService service;

  PaymentRepository(this.service);

  @override
  Future<void> postTransaction(PaymentModel model) async {
    final request = TransactionRequestModel(
      referenceId: model.referenceId,
      type: model.type.toTefIpType,
      amount: model.amount,
    );

    final response = await service.postTransaction(request);
  }
}

  // @override
  // Future<void> postTransaction(PaymentModel model) async {
  //   final dto = PaymentDto.fromModel(model);
  //   await service.postTransaction(dto.toJson());
  // }