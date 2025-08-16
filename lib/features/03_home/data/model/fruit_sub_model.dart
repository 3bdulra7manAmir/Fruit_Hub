import 'package:equatable/equatable.dart';

import '../../domain/entity/fruit_sub_entity.dart';


class HealthInfoModel extends HealthInfoEntity with EquatableMixin
{
  const HealthInfoModel({
    required super.healthTitle,
    super.healthSideTitle,
    required super.healthSubTitle,
    required super.healthCardImg,
  });

  factory HealthInfoModel.fromJson(Map<String, dynamic> json)
  {
    return HealthInfoModel(
      healthTitle: json['HealthTitle'] as String,
      healthSideTitle: json['HealthSideTitle'] as String?,
      healthSubTitle: json['HealthSubTitle'] as String,
      healthCardImg: json['HealthCardImg'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'HealthTitle': healthTitle,
      'HealthSideTitle': healthSideTitle,
      'HealthSubTitle': healthSubTitle,
      'HealthCardImg': healthCardImg,
    };
  }

  @override
  List<Object?> get props =>
  [
    healthTitle, healthSideTitle, healthSubTitle, healthCardImg,
  ];
}
