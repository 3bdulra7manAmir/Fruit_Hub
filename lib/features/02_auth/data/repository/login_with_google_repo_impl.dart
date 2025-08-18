import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


import '../../domain/entity/login_with_google_entity.dart';
import '../../domain/repository/login_with_google_repo.dart';
import '../data_sources/remote_datasource_login_with_google.dart';

part 'login_with_google_repo_impl.g.dart';

class LoginWithGoogleRepoImpl implements LoginWithGoogleRepo
{
  const LoginWithGoogleRepoImpl({required this.remoteGoogle});
  final RemoteLoginGoogleDataSource remoteGoogle;

  @override
  Future<LoginWithGoogleEntity> loginWithGoogle() {
    return remoteGoogle.loginWithGoogle();
  }
}


@riverpod
LoginWithGoogleRepo loginWithGoogleRepo(Ref ref)
{
  return LoginWithGoogleRepoImpl(
    remoteGoogle: ref.read(remoteLoginGoogleDataSourceProvider),
  );
}
