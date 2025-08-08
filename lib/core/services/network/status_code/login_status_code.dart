import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../config/i18n/generated/l10n.dart';

class FirebaseLoginStatus {
  static String getMessageFromException(Object error) {
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'invalid-credential':
        case 'wrong-password':
          return S.current.invalid_credential;
        case 'user-not-found':
          return S.current.user_not_found;
        case 'user-disabled':
          return S.current.user_disabled;
        case 'too-many-requests':
          return S.current.too_many_requests;
        case 'invalid-email':
          return S.current.invalid_email;
        default:
          return S.current.login_failed;
      }
    }
    return S.current.login_failed;
  }
}
