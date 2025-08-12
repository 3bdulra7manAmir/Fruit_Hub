import 'package:equatable/equatable.dart';

class FruitEntity extends Equatable {

  const FruitEntity({
    required this.name,
    required this.price,
    required this.imgUrl,
  });
  final String name;
  final double price;
  final String imgUrl;

  @override
  List<Object?> get props => [name, price, imgUrl];
}
