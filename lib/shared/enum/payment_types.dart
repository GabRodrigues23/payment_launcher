enum PaymentTypes {
  Credit('CC', 'Credit'),
  Debit('CD', 'Debit'),
  Pix('PX', 'Pix');

  final String code;
  final String type;

  const PaymentTypes(this.code, this.type);
}
