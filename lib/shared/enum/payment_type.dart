enum PaymentType {
  credit(03, 'CC', 'Credit'),
  debit(04, 'CD', 'Debit'),
  pix(17, 'PX', 'Pix'),
  unknown(99, 'UN', 'Desconhecido');

  final int code;
  final String type;
  final String description;

  const PaymentType(this.code, this.type, this.description);
}
