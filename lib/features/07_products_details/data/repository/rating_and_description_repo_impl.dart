import '../../domain/entity/rating_and_description_entity.dart';
import '../../domain/repository/rating_and_description_repo.dart';
import '../data_sources/rating_and_description_remote_datasource.dart';

class RatingAndDescriptionRepoImpl implements RatingAndDescriptionRepo
{
  const RatingAndDescriptionRepoImpl({required this.remote});
  final RemoteRatingAndDescriptionDataSource remote;

  @override
  Future<List<RatingAndDescriptionEntity>> fetchRatingAndDescription()
  {
    return remote.fetchRatingAndDescription();
  }

}
