import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/firebase_services/firebase_auth.dart';
import '../../../../core/services/database/firebase/firebase_services/firebase_fire_store.dart';

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

  static const String defaultProfileUrl =
    'https://firebasestorage.googleapis.com/v0/b/fruithub-c78be.firebasestorage.app/o/default_user_img%2FUser.png?alt=media&token=2f1dba31-7c91-4e64-a21e-76c35d7c96d7';

  @override
  Future<UserCredential> register({
    required String fullName,
    required String email,
    required String password,
  }) async {

    final credential = await FirebaseAuthService.instance.auth
      .createUserWithEmailAndPassword(email: email, password: password);

    await credential.user?.updateDisplayName(fullName);
    await credential.user?.updatePhotoURL(defaultProfileUrl);

    final uid = credential.user?.uid;
    if (uid != null) {
      final userDoc = FirebaseFireStoreService.instance.firestore.collection('users').doc(uid);
      await userDoc.set({
        'userId': uid,
        'userEmail': email,
        'photoURL': defaultProfileUrl,
      });
    }

    return credential;
  }
}

@riverpod
RemoteRegisterDataSource remoteRegisterDataSource(Ref ref) => RemoteRegisterDataSourceImpl();
