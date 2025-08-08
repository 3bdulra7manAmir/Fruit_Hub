import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/firebase_auth.dart';

part 'remote_datasource_register.g.dart';

abstract class RemoteRegisterDataSource {
  Future<UserCredential> register({
    required String fullName,
    required String email,
    required String password,
  });
}

class RemoteRegisterDataSourceImpl implements RemoteRegisterDataSource {
  RemoteRegisterDataSourceImpl();

  @override
  Future<UserCredential> register({
    required String fullName,
    required String email,
    required String password,
  }) async {
    final credential = await AuthService.instance.auth
        .createUserWithEmailAndPassword(email: email, password: password);

    await credential.user?.updateDisplayName(fullName);
    return credential;
  }
}

@riverpod
RemoteRegisterDataSource remoteRegisterDataSource(Ref ref) {
  return RemoteRegisterDataSourceImpl();
}
