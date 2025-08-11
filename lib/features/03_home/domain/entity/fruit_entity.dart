import 'package:equatable/equatable.dart';

class FruitEntity extends Equatable {

  const FruitEntity({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
  final String name;
  final double price;
  final String imageUrl;

  @override
  List<Object?> get props => [name, price, imageUrl];
}
