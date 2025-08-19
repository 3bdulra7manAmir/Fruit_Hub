import '../../../10_profile/data/data_sources/payment_cards_remote_datasource.dart';
import '../../domain/entity/payment_cards_entity.dart';
import '../../domain/repository/payment_cards_repo.dart';

class PaymentCardsRepoImpl implements PaymentCardsRepo
{
  const PaymentCardsRepoImpl({required this.remote});
  final RemotePaymentCardsDataSource remote;

  @override
  Future<List<PaymentCardsEntity>> fetchPaymentCards()
  {
    return remote.fetchPaymentCards();
  }
}
