import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../config/i18n/generated/l10n.dart';

class FirebaseGeneralAuthStatus {
  static String getMessageFromException(Object error) {
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'invalid-argument':
          return S.current.invalid_argument;
        case 'internal-error':
          return S.current.internal_error;
        case 'invalid-user-token':
        case 'user-token-expired':
          return S.current.invalid_user_token;
        case 'invalid-session-cookie-duration':
          return S.current.invalid_session_duration;
        case 'session-cookie-revoked':
          return S.current.session_cookie_revoked;
        case 'id-token-expired':
          return S.current.id_token_expired;
        case 'id-token-revoked':
          return S.current.id_token_revoked;
        case 'unauthorized-continue-uri':
          return S.current.unauthorized_continue_uri;
        default:
          return S.current.auth_failed;
      }
    }
    return S.current.auth_failed;
  }
}
