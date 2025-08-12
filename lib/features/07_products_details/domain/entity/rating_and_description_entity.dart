import 'package:equatable/equatable.dart';

class RatingAndDescriptionEntity extends Equatable {

  const RatingAndDescriptionEntity({
    required this.ratingId,
    required this.ratingDescription,
    required this.usersCount,
    required this.value,
  });
  final String ratingId;
  final String ratingDescription;
  final String usersCount;
  final num value;

  @override
  List<Object?> get props => [ratingId, ratingDescription, usersCount, value];
}
