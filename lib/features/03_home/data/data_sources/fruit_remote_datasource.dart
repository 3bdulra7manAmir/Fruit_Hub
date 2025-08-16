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
      final fruitsGridSnapshot = await FirebaseFireStoreService.instance.firestore.collection('Fruits_Grid').get();

      final List<FruitModel> fruits = [];
      for (var fruitDoc in fruitsGridSnapshot.docs)
      {
        final fruitData = fruitDoc.data();
        final healthInfoSnapshot = await fruitDoc.reference.collection('Fruits_Health_Info').get();
        final healthInfoList = healthInfoSnapshot.docs.map((doc) => doc.data()).toList();
        fruits.add(FruitModel.fromJson({
          ...fruitData, 'ProductId': fruitDoc.id, 'healthInfo': healthInfoList,
        }));
      }

      return fruits;
    }
    catch (error, stack)
    {
      throw Exception('Error fetching fruits: $error, stack: $stack');
    }
  }

}


@riverpod
RemoteFruitDataSource remoteFruitDataSource(Ref ref)
{
  return RemoteFruitDataSourceImpl();
}