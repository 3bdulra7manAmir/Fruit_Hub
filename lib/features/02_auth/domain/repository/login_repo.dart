import '../entity/login_entity.dart';

abstract class LoginRepo {
  Future<void> login(LoginEntity credentials);
}
