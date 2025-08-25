import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/firebase_services/firebase_auth.dart';

part 'remote_data_source_forget_password.g.dart';

abstract class RemoteForgetPasswordDataSource {
  Future<void> sendResetPasswordEmail(String email, ActionCodeSettings settings);
  Future<void> confirmResetPassword(String code, String newPassword);
}

class RemoteForgetPasswordDataSourceImpl
    implements RemoteForgetPasswordDataSource {
  RemoteForgetPasswordDataSourceImpl();

  @override
  Future<void> sendResetPasswordEmail(
      String email, ActionCodeSettings settings) async {
    await FirebaseAuthService.instance.auth.sendPasswordResetEmail(
      email: email,
      actionCodeSettings: settings,
    );
  }

  @override
  Future<void> confirmResetPassword(String code, String newPassword) async {
    await FirebaseAuthService.instance.auth.confirmPasswordReset(
      code: code,
      newPassword: newPassword,
    );
  }
}

@riverpod
RemoteForgetPasswordDataSource remoteForgetPasswordDataSource(Ref ref) {
  return RemoteForgetPasswordDataSourceImpl();
}
