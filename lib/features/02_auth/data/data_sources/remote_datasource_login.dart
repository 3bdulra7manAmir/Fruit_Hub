import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/firebase_services/firebase_auth.dart';

part 'remote_datasource_login.g.dart';

abstract class RemoteLoginDataSource {
  Future<UserCredential> login({
    required String email,
    required String password,
  });
}

class RemoteLoginDataSourceImpl implements RemoteLoginDataSource {
  RemoteLoginDataSourceImpl();

  @override
  Future<UserCredential> login({
    required String email,
    required String password,
  }) {
    return FirebaseAuthService.instance.auth.signInWithEmailAndPassword(email: email, password: password);
  }
}

@riverpod
RemoteLoginDataSource remoteLoginDataSource(Ref ref) {
  return RemoteLoginDataSourceImpl();
}
