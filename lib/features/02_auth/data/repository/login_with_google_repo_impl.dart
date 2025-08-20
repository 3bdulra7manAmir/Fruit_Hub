import '../../domain/entity/login_with_google_entity.dart';
import '../../domain/repository/login_with_google_repo.dart';
import '../data_sources/remote_datasource_login_with_google.dart';


class LoginWithGoogleRepoImpl implements LoginWithGoogleRepo
{
  const LoginWithGoogleRepoImpl({required this.remoteGoogle});
  final RemoteLoginGoogleDataSource remoteGoogle;

  @override
  Future<LoginWithGoogleEntity> loginWithGoogle() {
    return remoteGoogle.loginWithGoogle();
  }
}
