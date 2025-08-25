import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/firebase_services/firebase_fire_store.dart';
import '../model/offer_model.dart';

part 'offer_remote_datasource.g.dart';

abstract class RemoteOfferDataSource
{
  Future<List<OffersModel>> fetchOffers();
}


class RemoteOfferDataSourceImpl implements RemoteOfferDataSource
{
  RemoteOfferDataSourceImpl();

  @override
  Future<List<OffersModel>> fetchOffers() async
  {
    try
    {
      // await Future.delayed(const Duration(seconds: 5));
      final offersListSnapshot = await FirebaseFireStoreService.instance.firestore
        .collection('Discounts_List').get();
      
      final offers = await Future.wait(
        offersListSnapshot.docs.map((categoryDoc) async {
          final subCollectionSnapshot = await categoryDoc.reference.get();

          return OffersModel.fromJson({
            ...subCollectionSnapshot.data()!,
            'id': categoryDoc.id,
          });
        }),
      );

      return offers;
    }
    catch (error, stack)
    {
      throw Exception('Error fetching Offers: $error, stack: $stack');
    }
  }
  
}


@riverpod
RemoteOfferDataSource remoteOfferDataSource(Ref ref)
{
  return RemoteOfferDataSourceImpl();
}