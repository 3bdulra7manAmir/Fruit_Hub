import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/payment_cards_entity.dart';
import '../repository/payment_cards_repo.dart';

part 'payment_cards_fetch_usecase.g.dart';

@riverpod
Future<List<PaymentCardsEntity>> fetchPaymentCardsUsecase(Ref ref)
{
  return ref.read(paymentCardsRepoProvider).fetchPaymentCards();
}
