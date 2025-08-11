import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/fruit_model.dart';

part 'remote_datasource.g.dart';

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
      final mainCardSnapshot = await FirebaseFirestore.instance
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