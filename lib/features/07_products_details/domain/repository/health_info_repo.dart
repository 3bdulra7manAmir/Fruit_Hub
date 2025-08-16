// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../../data/data_sources/remote_datasource.dart';
// import '../../data/repository/repo_impl.dart';
// import '../entity/health_and_review_entity.dart';

// part 'health_info_repo.g.dart';

// abstract class HealthInfoRepo
// {
//   Future<List<FruitHealthEntity>> fetchHealthInfo();
// }

// @riverpod
// HealthInfoRepo healthInfoRepo(Ref ref) {
//   return HealthInfoRepoImpl(
//     remote: ref.read(remoteHealthInfoDataSourceProvider),
//   );
// }
