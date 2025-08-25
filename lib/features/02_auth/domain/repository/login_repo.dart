import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/remote_datasource_login.dart';
import '../../data/repository/login_repo_impl.dart';
import '../entity/login_entity.dart';

part 'login_repo.g.dart';

abstract class LoginRepo {
  Future<void> login(LoginEntity credentials);
}


@riverpod
LoginRepo loginRepo(Ref ref) {
  return LoginRepoImpl(
    remote: ref.read(remoteLoginDataSourceProvider),
  );
}
