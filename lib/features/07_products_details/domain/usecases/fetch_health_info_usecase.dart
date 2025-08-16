import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/health_and_review_entity.dart';
import '../repository/health_info_repo.dart';

part 'fetch_health_info_usecase.g.dart';

@Riverpod(keepAlive: true)
Future<List<FruitHealthEntity>> fetchHealthInfoUsecase(Ref ref)
{
  return ref.read(healthInfoRepoProvider).fetchHealthInfo();
}
