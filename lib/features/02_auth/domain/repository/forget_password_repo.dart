import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/remote_data_source_forget_password.dart';
import '../../data/repository/forget_password_repo_impl.dart';

part 'forget_password_repo.g.dart';

abstract class ForgetPasswordRepo {
  Future<void> sendResetPasswordEmail(
      String email, ActionCodeSettings settings);
  Future<void> confirmResetPassword(String code, String newPassword);
}

@riverpod
ForgetPasswordRepo forgetPasswordRepo(Ref ref) {
  return ForgetPasswordRepoImpl(
    remote: ref.read(remoteForgetPasswordDataSourceProvider),
  );
}
