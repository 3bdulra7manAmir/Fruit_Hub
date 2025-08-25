import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/payment_cards_remote_datasource.dart';
import '../../data/repository/payment_cards_repo_impl.dart';
import '../entity/payment_cards_entity.dart';

part 'payment_cards_repo.g.dart';

abstract class PaymentCardsRepo
{
  Future<List<PaymentCardsEntity>> fetchPaymentCards();
}


@riverpod
PaymentCardsRepo paymentCardsRepo(Ref ref)
{
  return PaymentCardsRepoImpl(remote: ref.read(remotePaymentCardsDataSourceProvider),);
}
