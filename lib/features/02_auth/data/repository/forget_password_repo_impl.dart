import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/repository/forget_password_repo.dart';
import '../data_sources/remote_data_source_forget_password.dart';

class ForgetPasswordRepoImpl implements ForgetPasswordRepo {
  const ForgetPasswordRepoImpl({required this.remote});
  final RemoteForgetPasswordDataSource remote;

  @override
  Future<void> sendResetPasswordEmail(
      String email, ActionCodeSettings settings) {
    return remote.sendResetPasswordEmail(email, settings);
  }

  @override
  Future<void> confirmResetPassword(String code, String newPassword) {
    return remote.confirmResetPassword(code, newPassword);
  }
}
