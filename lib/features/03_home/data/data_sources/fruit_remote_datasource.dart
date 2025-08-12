import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/intsance/firebase_fire_store.dart';
import '../model/fruit_model.dart';

part 'fruit_remote_datasource.g.dart';

abstract class RemoteFruitDataSource
{
  Future<List<FruitModel>> fetchFruits();
}

class RemoteFruitDataSourceImpl implements RemoteFruitDataSource
{
  RemoteFruitDataSourceImpl();

  @override
  Future<List<FruitModel>> fetchFruits() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 5));
      final mainCardSnapshot = await FirebaseFireStoreService.instance.firestore
        .collection('Fruits_Grid').get();

      final List<FruitModel> fruits = [];
      for (var categoryDoc in mainCardSnapshot.docs)
      {
        final subCollectionSnapshot = await categoryDoc.reference.get();
        fruits.add(FruitModel.fromJson({
          ...subCollectionSnapshot.data()!,
          'id': categoryDoc.id,
        }));
      }
      return fruits;
    }
    catch (e)
    {
      throw Exception('Error fetching fruits: $e');
    }
  }
  
}

@riverpod
RemoteFruitDataSource remoteFruitDataSource(Ref ref) {
  return RemoteFruitDataSourceImpl();
}