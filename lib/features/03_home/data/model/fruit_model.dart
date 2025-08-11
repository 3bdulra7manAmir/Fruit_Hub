import 'package:equatable/equatable.dart';
import '../../domain/entity/fruit_entity.dart';


class FruitModel extends FruitEntity with EquatableMixin {

  factory FruitModel.fromJson(Map<String, dynamic> json) {
    return FruitModel(
      id: json['ProductId'] as String,
      name: json['ProductName'] as String,
      price: (json['ProductPrice'] as num).toDouble(),
      imageUrl: json['ProductImg'] as String,
    );
  }
  const FruitModel({
    required this.id,
    required super.name,
    required super.price,
    required super.imageUrl,
  });

  final String id;

  Map<String, dynamic> toJson() => {
        'ProductId': id,
        'ProductName': name,
        'ProductPrice': price,
        'ProductImg': imageUrl,
      };

  @override
  List<Object?> get props => [id, name, price, imageUrl];
}
