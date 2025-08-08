import 'package:firebase_auth/firebase_auth.dart';
import '../../../../../config/i18n/generated/l10n.dart';

class FirebaseUploadImgStatus {
  static String getMessageFromException(Object error) {
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'invalid-photo-url':
          return S.current.invalid_photo_url;
        case 'user-disabled':
          return S.current.user_disabled;
        case 'internal-error':
          return S.current.upload_failed;
        default:
          return S.current.upload_failed;
      }
    }
    return S.current.upload_failed;
  }
}
