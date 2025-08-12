import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/fruit_entity.dart';
import '../repository/fruit_repo.dart';

part 'fetch_fruit_usecase.g.dart';

@Riverpod(keepAlive: true)
Future<List<FruitEntity>> fetchFruitsUsecase(Ref ref)
{
  return ref.read(fruitRepoProvider).fetchFruit();
}
