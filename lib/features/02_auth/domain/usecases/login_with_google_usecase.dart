import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/login_with_google_repo_impl.dart';
import '../entity/login_with_google_entity.dart';

part 'login_with_google_usecase.g.dart';

@riverpod
Future<LoginWithGoogleEntity> loginWithGoogleUsecase(Ref ref,)
{
  return ref.read(loginWithGoogleRepoProvider).loginWithGoogle();
}
