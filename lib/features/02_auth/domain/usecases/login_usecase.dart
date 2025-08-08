import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/login_entity.dart';
import '../repository/login_repo.dart';

part 'login_usecase.g.dart';


@riverpod
Future<void> loginUsecase(Ref ref, LoginEntity credentials) {
  return ref.read(loginRepoProvider).login(credentials);
}
