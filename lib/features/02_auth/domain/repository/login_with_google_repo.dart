import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/remote_datasource_login_with_google.dart';
import '../../data/repository/login_with_google_repo_impl.dart';
import '../entity/login_with_google_entity.dart';


abstract class LoginWithGoogleRepo
{
  Future<LoginWithGoogleEntity> loginWithGoogle();
}


@riverpod
LoginWithGoogleRepo loginWithGoogleRepo(Ref ref)
{
  return LoginWithGoogleRepoImpl(
    remoteGoogle: ref.read(remoteLoginGoogleDataSourceProvider),
  );
}