import '../../domain/entity/health_and_review_entity.dart';
import '../../domain/repository/health_info_repo.dart';
import '../data_sources/health_info_remote_datasource.dart';

class HealthInfoRepoImpl implements HealthInfoRepo
{
  const HealthInfoRepoImpl({required this.remote});
  final RemoteHealthInfoDataSource remote;

  @override
  Future<List<FruitHealthEntity>> fetchHealthInfo()
  {
    return remote.fetchHealthInfo();
  }

}
