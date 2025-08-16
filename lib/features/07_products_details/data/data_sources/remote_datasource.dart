// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../../../../core/services/database/firebase/intsance/firebase_fire_store.dart';
// import '../model/health_and_review_model.dart';

// part 'health_info_remote_datasource.g.dart';

// abstract class RemoteHealthInfoDataSource
// {
//   Future<List<FruitHealthModel>> fetchHealthInfo();
// }


// class RemoteHealthInfoDataSourceImpl implements RemoteHealthInfoDataSource
// {
//   RemoteHealthInfoDataSourceImpl();

//   @override
//   Future<List<FruitHealthModel>> fetchHealthInfo() async
//   {
//     try
//     {
//       final fruitsSnapshot = await FirebaseFireStoreService.instance.firestore
//         .collection('Fruit_Rating_and_Description').get();

//       final List<FruitHealthModel> healthInfo = [];

//       for (var fruitDoc in fruitsSnapshot.docs)
//       {
//         final subCollectionSnapshot = await fruitDoc.reference.collection('Sub_Info').get();

//         for (var subDoc in subCollectionSnapshot.docs)
//         {
//           healthInfo.add(FruitHealthModel.fromJson({
//             ...subDoc.data(),
//             'id': subDoc.id,
//             'fruitId': fruitDoc.id,
//           }));
//         }
//       }

//       return healthInfo;
//     }
//     catch (error, stack)
//     {
//       throw Exception('Error fetching rating and description: $error, stack: $stack');
//     }
//   }
// }

// @riverpod
// RemoteHealthInfoDataSource remoteHealthInfoDataSource(Ref ref)
// {
//   return RemoteHealthInfoDataSourceImpl();
// }
