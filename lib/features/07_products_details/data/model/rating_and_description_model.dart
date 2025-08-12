import 'package:equatable/equatable.dart';
import '../../domain/entity/rating_and_description_entity.dart';


class RatingAndDescriptionModel extends RatingAndDescriptionEntity with EquatableMixin {

  factory RatingAndDescriptionModel.fromJson(Map<String, dynamic> json) {
    return RatingAndDescriptionModel(
      ratingId: json['RatingId'] as String,
      value: (json['RatingValue'] as num).toDouble(),
      usersCount: json['UsersCount'] as String,
      ratingDescription: json['RatingDescription'] as String,
    );
  }
  const RatingAndDescriptionModel({
    required super.ratingId,
    required super.value,
    required super.usersCount,
    required super.ratingDescription,
  });


  Map<String, dynamic> toJson() => {
        'RatingId': ratingId,
        'RatingValue': value,
        'UsersCount': usersCount,
        'RatingDescription': ratingDescription,
      };

  @override
  List<Object?> get props => [ratingId, value, usersCount, ratingDescription];
}
