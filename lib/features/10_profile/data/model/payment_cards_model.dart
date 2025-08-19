import 'package:equatable/equatable.dart';

import '../../domain/entity/payment_cards_entity.dart';


class PaymentCardsModel extends PaymentCardsEntity with EquatableMixin
{
  factory PaymentCardsModel.fromJson(Map<String, dynamic> json)
  {
    return PaymentCardsModel(
      cardId: json['Card_ID'] as String,
      ownerName: json['Owner_Name'] as String,
      cardNumber: (json['Card_Number'] as num).toInt(),
      expireDate: json['Expire_Date'] as String,
      cvvCode: (json['Cvv_Code'] as num).toInt(),
    );
  }

  const PaymentCardsModel({
    required super.cardId,
    required super.ownerName,
    required super.cardNumber,
    required super.expireDate,
    required super.cvvCode,
  });


  Map<String, dynamic> toJson() =>
  {
    'Card_ID': cardId,
    'Owner_Name': ownerName,
    'Card_Number': cardNumber,
    'Expire_Date': expireDate,
    'Cvv_Code': cvvCode,
  };

  @override
  List<Object?> get props =>
  [
    cardId, ownerName, cardNumber, 
    cardNumber, expireDate, cvvCode
  ];
}
