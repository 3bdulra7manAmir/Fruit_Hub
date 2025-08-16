import 'package:equatable/equatable.dart';


class HealthInfoEntity extends Equatable
{
  const HealthInfoEntity({
    required this.healthTitle,
    this.healthSideTitle,
    required this.healthSubTitle,
    required this.healthCardImg,
  });

  final String healthTitle;
  final String? healthSideTitle;
  final String healthSubTitle;
  final String healthCardImg;

  @override
  List<Object?> get props =>
  [
    healthTitle,
    healthSideTitle,
    healthSubTitle,
    healthCardImg,
  ];
}
