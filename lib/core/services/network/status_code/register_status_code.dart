import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../config/i18n/generated/l10n.dart';

class FirebaseRegisterStatus {
  static String getMessageFromException(Object error) {
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'email-already-in-use':
          return S.current.email_already_in_use;
        case 'invalid-email':
          return S.current.invalid_email;
        case 'operation-not-allowed':
          return S.current.operation_not_allowed;
        case 'weak-password':
          return S.current.weak_password;
        default:
          return S.current.register_failed;
      }
    }
    return S.current.register_failed;
  }
}
