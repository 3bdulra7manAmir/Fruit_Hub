import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/firebase_services/firebase_fire_store.dart';
import '../../../../core/utils/logger/app_logger.dart';
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
      final fruitsSnapshot = await FirebaseFireStoreService.instance.firestore
        .collection('Fruits_Grid').get();
      
      final fruits = await Future.wait(
      fruitsSnapshot.docs.map((fruitDoc) async {
        final fruitData = fruitDoc.data();
        final healthInfoSnapshot =await fruitDoc.reference.collection('Fruits_Health_Info').get();
        final healthInfoList = healthInfoSnapshot.docs.map((doc) => doc.data()).toList();

        return FruitModel.fromJson({
          ...fruitData,
          'ProductId': fruitDoc.get('ProductId'),
          'healthInfo': healthInfoList,
        });
      }),
    );
      AppLogger.info(fruits[0].fruitId.toString());
      return fruits;
    }
    catch (error, stack)
    {
      //AppLogger.error('Error fetching fruits:', error: error, stackTrace: stack);
      throw Exception('Error fetching fruits: $error, stack: $stack');
    }
  }

}


@riverpod
RemoteFruitDataSource remoteFruitDataSource(Ref ref)
{
  return RemoteFruitDataSourceImpl();
}