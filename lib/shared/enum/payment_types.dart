enum PaymentTypes {
  credit('CC', 'Credit'),
  debit('CD', 'Debit'),
  pix('PX', 'Pix');

  final String code;
  final String type;

  const PaymentTypes(this.code, this.type);
}
