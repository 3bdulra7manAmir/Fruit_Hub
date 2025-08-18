import '../../domain/entity/login_entity.dart';
import '../../domain/repository/login_repo.dart';
import '../data_sources/remote_datasource_login.dart';

class LoginRepoImpl implements LoginRepo {

  const LoginRepoImpl({required this.remote,});
  final RemoteLoginDataSource remote;

  @override
  Future<void> login(LoginEntity credentials) async {
    await remote.login(
      email: credentials.email,
      password: credentials.password,
    );
  }
}
