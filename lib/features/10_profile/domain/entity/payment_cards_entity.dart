import 'package:equatable/equatable.dart';


class PaymentCardsEntity extends Equatable
{
  const PaymentCardsEntity({
    required this.cardId,
    required this.ownerName,
    required this.cardNumber,
    required this.expireDate,
    required this.cvvCode,
  });

  final String cardId;
  final String ownerName;
  final int cardNumber;
  final String expireDate;
  final int cvvCode;

  @override
  List<Object?> get props =>
  [
    cardId, ownerName, cardNumber, 
    cardNumber, expireDate, cvvCode
  ];
}
