import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'fruit_sub_entity.g.dart';

@HiveType(typeId: 1, adapterName: 'HealthInfoEntityAdapter')
class HealthInfoEntity extends Equatable {
  const HealthInfoEntity({
    required this.healthTitle,
    this.healthSideTitle,
    required this.healthSubTitle,
    required this.healthCardImg,
  });

  @HiveField(0)
  final String healthTitle;

  @HiveField(1)
  final String? healthSideTitle;

  @HiveField(2)
  final String healthSubTitle;

  @HiveField(3)
  final String healthCardImg;

  @override
  List<Object?> get props => [
        healthTitle,
        healthSideTitle,
        healthSubTitle,
        healthCardImg,
      ];
}
