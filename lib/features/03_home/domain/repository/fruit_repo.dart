import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/remote_datasource.dart';
import '../../data/repository/fruit_repo_impl.dart';
import '../entity/fruit_entity.dart';

part 'fruit_repo.g.dart';

abstract class FruitRepo {
  Future<List<FruitEntity>> fetchFruits();
}

@riverpod
FruitRepo fruitRepo(Ref ref) {
  return FruitRepoImpl(
    remote: ref.read(remoteFruitDataSourceProvider),
  );
}
