import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/offer_remote_datasource.dart';
import '../../data/repository/offer_repo_impl.dart';
import '../entity/offer_entity.dart';

part 'offer_repo.g.dart';

abstract class OfferRepo {
  Future<List<OffersEntity>> fetchOffers();
}

@riverpod
OfferRepo offerRepo(Ref ref) {
  return OfferRepoImpl(
    remote: ref.read(remoteOfferDataSourceProvider),
  );
}
