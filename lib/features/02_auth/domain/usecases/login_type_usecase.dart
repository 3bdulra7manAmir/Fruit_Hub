import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/login_entity.dart';
import 'login_usecase.dart';
import 'login_with_google_usecase.dart';

part 'login_type_usecase.g.dart';

enum LoginMethod {
  emailPassword, googleCred, 
  //facebookCred, appleCred
}

@riverpod
Future<dynamic> loginTypeUsecase(Ref ref, {required LoginMethod method, LoginEntity? credentials,}) async
{
  switch (method)
  {
    case LoginMethod.emailPassword:
      if (credentials == null) {
        throw ArgumentError('Credentials must not be null for email login');
      }
      return await ref.watch(loginUsecaseProvider(credentials).future);

    case LoginMethod.googleCred:
      return await ref.watch(loginWithGoogleUsecaseProvider.future);

    // case LoginMethod.appleCred:
    //   return await ref.watch(loginWithGoogleUsecaseProvider.future);

    // case LoginMethod.facebookCred:
    //   return await ref.watch(loginWithGoogleUsecaseProvider.future);
  }
}
