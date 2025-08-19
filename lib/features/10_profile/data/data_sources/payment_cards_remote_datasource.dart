import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/firebase_services/firebase_fire_store.dart';
import '../model/payment_cards_model.dart';

part 'payment_cards_remote_datasource.g.dart';

abstract class RemotePaymentCardsDataSource
{
  Future<List<PaymentCardsModel>> fetchPaymentCards();
}


class RemotePaymentCardsDataSourceImpl implements RemotePaymentCardsDataSource
{
  RemotePaymentCardsDataSourceImpl();

  @override
  Future<List<PaymentCardsModel>> fetchPaymentCards() async
  {
    try
    {
      // await Future.delayed(const Duration(seconds: 5));
      final cardsListSnapshot = await FirebaseFireStoreService.instance.firestore
        .collection('Payment_Cards_List').get();

      final List<PaymentCardsModel> cards = [];
      for (var categoryDoc in cardsListSnapshot.docs)
      {
        final subCollectionSnapshot = await categoryDoc.reference.get();
        cards.add(PaymentCardsModel.fromJson({
          ...subCollectionSnapshot.data()!,
          'id': categoryDoc.id,
        }));
      }
      return cards;
    }
    catch (error, stack)
    {
      throw Exception('Error fetching cards: $error, stack: $stack');
    }
  }
  
}


@riverpod
RemotePaymentCardsDataSource remotePaymentCardsDataSource(Ref ref)
{
  return RemotePaymentCardsDataSourceImpl();
}