import '../../domain/entity/offer_entity.dart';
import '../../domain/repository/offer_repo.dart';
import '../data_sources/offer_remote_datasource.dart';

class OfferRepoImpl implements OfferRepo
{
  const OfferRepoImpl({required this.remote});
  final RemoteOfferDataSource remote;

  @override
  Future<List<OffersEntity>> fetchOffers()
  {
    return remote.fetchOffers();
  }
}
