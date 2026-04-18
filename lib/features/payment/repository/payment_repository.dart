import 'package:payment_launcher/features/payment/dto/payment_dto.dart';
import 'package:payment_launcher/features/payment/interface/payment_repository_interface.dart';
import 'package:payment_launcher/features/payment/model/payment_model.dart';
import 'package:payment_launcher/features/payment/service/payment_service.dart';

class PaymentRepository implements PaymentRepositoryInterface {
  final PaymentService service;

  PaymentRepository(this.service);

  @override
  Future<void> postTransaction(PaymentModel model) async {
    final dto = PaymentDto.fromModel(model);
    await service.postTransaction(dto.toJson());
  }
}
