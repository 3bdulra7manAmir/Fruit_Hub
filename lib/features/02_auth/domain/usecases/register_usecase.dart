import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/register_entity.dart';
import '../repository/register_repo.dart';

part 'register_usecase.g.dart';

@riverpod
Future<void> registerUsecase(Ref ref, RegisterEntity credentials) {
  return ref.read(registerRepoProvider).register(credentials);
}
