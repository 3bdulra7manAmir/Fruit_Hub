import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/offer_entity.dart';
import '../repository/offer_repo.dart';

part 'fetch_offers_usecase.g.dart';


@riverpod
Future<List<OffersEntity>> fetchOffersUsecase(Ref ref)
{
  return ref.read(offerRepoProvider).fetchOffers();
}
