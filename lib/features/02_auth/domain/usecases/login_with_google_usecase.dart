import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/login_with_google_entity.dart';
import '../repository/login_with_google_repo.dart';

part 'login_with_google_usecase.g.dart';

@riverpod
Future<LoginWithGoogleEntity> loginWithGoogleUsecase(Ref ref,)
{
  return ref.read(loginWithGoogleRepoProvider).loginWithGoogle();
}
