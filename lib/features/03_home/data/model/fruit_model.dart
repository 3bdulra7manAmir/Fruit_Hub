import 'package:equatable/equatable.dart';
import '../../domain/entity/fruit_entity.dart';
import 'fruit_sub_model.dart';


class FruitModel extends FruitEntity with EquatableMixin
{
  factory FruitModel.fromJson(Map<String, dynamic> json)
  {
    return FruitModel(
      fruitId: json['ProductId'] as String,
      name: json['ProductName'] as String,
      price: (json['ProductPrice'] as num).toDouble(),
      imgUrl: json['ProductImg'] as String,
      rateValue: (json['RatingValue'] as num).toDouble(),
      rateUsersCount: (json['RatingUsersCount'] as num).toDouble(),
      rateDescription: json['RatingDescription'] as String,
      healthInfo: (json['healthInfo'] as List<dynamic>? ?? [])
        .map((e) => HealthInfoModel.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }

  const FruitModel({
    required super.fruitId,
    required super.name,
    required super.price,
    required super.imgUrl,
    required super.rateValue,
    required super.rateUsersCount,
    required super.rateDescription,
    super.healthInfo = const [],
  });


  Map<String, dynamic> toJson() =>
  {
    'ProductId': fruitId,
    'ProductName': name,
    'ProductPrice': price,
    'ProductImg': imgUrl,
    'RatingValue': rateValue,
    'RatingUsersCount': rateUsersCount,
    'RatingDescription': rateDescription,
    'healthInfo': healthInfo.map((e)
    {
      if (e is HealthInfoModel) return e.toJson();
      return
      {
        'HealthTitle': e.healthTitle,
        'HealthSideTitle': e.healthSideTitle,
        'HealthSubTitle': e.healthSubTitle,
        'HealthCardImg': e.healthCardImg,
      };
    }).toList(),
  };

  @override
  List<Object?> get props =>
  [
    fruitId,
    name, price, imgUrl,
    rateValue, rateUsersCount, rateDescription,
    healthInfo,
  ];
}
