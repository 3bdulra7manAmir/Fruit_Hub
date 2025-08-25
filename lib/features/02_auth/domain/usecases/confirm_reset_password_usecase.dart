import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/forget_password_repo.dart';

part 'confirm_reset_password_usecase.g.dart';

class ConfirmResetPassword {
  ConfirmResetPassword(this.repository);
  final ForgetPasswordRepo repository;

  Future<void> call(String code, String newPassword) {
    return repository.confirmResetPassword(code, newPassword);
  }
}

@riverpod
ConfirmResetPassword confirmResetPassword(Ref ref) {
  return ConfirmResetPassword(ref.read(forgetPasswordRepoProvider));
}
