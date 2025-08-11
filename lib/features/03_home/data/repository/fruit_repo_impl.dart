import '../../domain/entity/fruit_entity.dart';
import '../../domain/repository/fruit_repo.dart';
import '../data_sources/remote_datasource.dart';

class FruitRepoImpl implements FruitRepo {
  const FruitRepoImpl({required this.remote});
  final RemoteFruitDataSource remote;

  @override
  Future<List<FruitEntity>> fetchFruits() {
    return remote.fetchFruits();
  }
}
