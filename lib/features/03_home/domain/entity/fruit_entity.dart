import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'fruit_sub_entity.dart';

part 'fruit_entity.g.dart';

@HiveType(typeId: 0, adapterName: 'FruitsEntityAdapter')
class FruitEntity extends Equatable
{
  const FruitEntity({
    required this.fruitId,
    required this.name,
    required this.price,
    required this.imgUrl,
    required this.weight,

    required this.rateValue,
    required this.rateUsersCount,
    required this.rateDescription,

    this.healthInfo = const [],
  });

  @HiveField(0)
  final String fruitId;

  @HiveField(1)
  final String name;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final String imgUrl;
  @HiveField(4)
  final double weight;

  @HiveField(5)
  final double rateValue;
  @HiveField(6)
  final double rateUsersCount;
  @HiveField(7)
  final String rateDescription;

  @HiveField(8)
  final List<HealthInfoEntity> healthInfo;

  @override
  List<Object?> get props =>
  [
    fruitId,
    name, price, imgUrl, weight,
    rateValue, rateUsersCount, rateDescription,
    healthInfo,
  ];
}
