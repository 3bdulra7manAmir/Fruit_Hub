import 'package:equatable/equatable.dart';
import '../../domain/entity/fruit_entity.dart';


class FruitModel extends FruitEntity with EquatableMixin {

  factory FruitModel.fromJson(Map<String, dynamic> json) {
    return FruitModel(
      fruitId: json['ProductId'] as String,
      name: json['ProductName'] as String,
      price: (json['ProductPrice'] as num).toDouble(),
      imgUrl: json['ProductImg'] as String,
    );
  }
  const FruitModel({
    required super.fruitId,
    required super.name,
    required super.price,
    required super.imgUrl,
  });


  Map<String, dynamic> toJson() => {
        'ProductId': fruitId,
        'ProductName': name,
        'ProductPrice': price,
        'ProductImg': imgUrl,
      };

  @override
  List<Object?> get props => [fruitId, name, price, imgUrl];
}
