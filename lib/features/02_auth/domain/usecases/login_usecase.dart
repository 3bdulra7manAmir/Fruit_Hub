import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/remote_datasource_login.dart';
import '../../data/repository/login_repo_impl.dart';
import '../entity/login_entity.dart';
import '../repository/login_repo.dart';

part 'login_usecase.g.dart';

@riverpod
LoginRepo loginRepo(Ref ref) {
  return LoginRepoImpl(
    remote: ref.read(remoteLoginDataSourceProvider),
  );
}

@riverpod
Future<void> loginUsecase(Ref ref, LoginEntity credentials) {
  return ref.read(loginRepoProvider).login(credentials);
}
