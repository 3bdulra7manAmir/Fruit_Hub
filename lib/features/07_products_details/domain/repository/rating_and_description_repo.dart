import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/rating_and_description_remote_datasource.dart';
import '../../data/repository/rating_and_description_repo_impl.dart';
import '../entity/rating_and_description_entity.dart';

part 'rating_and_description_repo.g.dart';

abstract class RatingAndDescriptionRepo
{
  Future<List<RatingAndDescriptionEntity>> fetchRatingAndDescription();
}

@riverpod
RatingAndDescriptionRepo ratingAndDescriptionRepo(Ref ref) {
  return RatingAndDescriptionRepoImpl(
    remote: ref.read(remoteRatingAndDescriptionDataSourceProvider),
  );
}
