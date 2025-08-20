import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/forget_password_repo.dart';

part 'forget_password_usecase.g.dart';

class SendResetPasswordEmail {
  SendResetPasswordEmail(this.repository);
  final ForgetPasswordRepo repository;

  Future<void> call(String email, ActionCodeSettings settings) {
    return repository.sendResetPasswordEmail(email, settings);
  }
}

@riverpod
SendResetPasswordEmail sendResetPasswordEmail(Ref ref) {
  return SendResetPasswordEmail(ref.read(forgetPasswordRepoProvider));
}
