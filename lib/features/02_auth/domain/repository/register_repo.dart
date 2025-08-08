import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/remote_datasource_register.dart';
import '../../data/repository/register_repo_impl.dart';
import '../entity/register_entity.dart';

part 'register_repo.g.dart';

abstract class RegisterRepo {
  Future<void> register(RegisterEntity credentials);
}

@riverpod
RegisterRepo registerRepo(Ref ref) {
  return RegisterRepoImpl(
    remote: ref.read(remoteRegisterDataSourceProvider),
  );
}
