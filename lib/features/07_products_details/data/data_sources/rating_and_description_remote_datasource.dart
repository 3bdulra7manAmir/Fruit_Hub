import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/intsance/firebase_fire_store.dart';
import '../model/rating_and_description_model.dart';

part 'rating_and_description_remote_datasource.g.dart';

abstract class RemoteRatingAndDescriptionDataSource
{
  Future<List<RatingAndDescriptionModel>> fetchRatingAndDescription();
}

class RemoteRatingAndDescriptionDataSourceImpl implements RemoteRatingAndDescriptionDataSource
{
  RemoteRatingAndDescriptionDataSourceImpl();

  @override
  Future<List<RatingAndDescriptionModel>> fetchRatingAndDescription() async
  {
    try
    {
      // await Future.delayed(const Duration(seconds: 5));
      final ratingAndDescriptionSnapshot = await FirebaseFireStoreService.instance.firestore
        .collection('Fruit_Rating_and_Description').get();

      final List<RatingAndDescriptionModel> ratingAndDescription = [];
      for (var categoryDoc in ratingAndDescriptionSnapshot.docs)
      {
        final subCollectionSnapshot = await categoryDoc.reference.get();
        ratingAndDescription.add(RatingAndDescriptionModel.fromJson({
          ...subCollectionSnapshot.data()!,
          'id': categoryDoc.id,
        }));
      }
      return ratingAndDescription;
    }
    catch (error, stack)
    {
      throw Exception('Error fetching rating and description: $error, stack: $stack');
    }
  }

  
}

@riverpod
RemoteRatingAndDescriptionDataSource remoteRatingAndDescriptionDataSource(Ref ref) {
  return RemoteRatingAndDescriptionDataSourceImpl();
}