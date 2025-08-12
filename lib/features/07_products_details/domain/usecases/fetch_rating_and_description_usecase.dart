import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/rating_and_description_entity.dart';
import '../repository/rating_and_description_repo.dart';

part 'fetch_rating_and_description_usecase.g.dart';

@Riverpod(keepAlive: true)
Future<List<RatingAndDescriptionEntity>> fetchRatingAndDescriptionUsecase(Ref ref)
{
  return ref.read(ratingAndDescriptionRepoProvider).fetchRatingAndDescription();
}
