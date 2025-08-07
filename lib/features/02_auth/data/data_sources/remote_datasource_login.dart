import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_datasource_login.g.dart';

abstract class RemoteLoginDataSource {
  Future<UserCredential> login({
    required String email,
    required String password,
  });
}

class RemoteLoginDataSourceImpl implements RemoteLoginDataSource {
  RemoteLoginDataSourceImpl(this._auth);
  final FirebaseAuth _auth;

  @override
  Future<UserCredential> login({
    required String email,
    required String password,
  }) {
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }
}

@riverpod
RemoteLoginDataSource remoteLoginDataSource(Ref ref) {
  return RemoteLoginDataSourceImpl(FirebaseAuth.instance);
}
