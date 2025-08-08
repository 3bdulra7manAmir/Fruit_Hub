import '../../domain/entity/register_entity.dart';
import '../../domain/repository/register_repo.dart';
import '../data_sources/remote_datasource_register.dart';

class RegisterRepoImpl implements RegisterRepo {
  const RegisterRepoImpl({required this.remote});
  final RemoteRegisterDataSource remote;

  @override
  Future<void> register(RegisterEntity credentials) async {
    await remote.register(
      fullName: credentials.fullName,
      email: credentials.email,
      password: credentials.password,
    );
  }
}
