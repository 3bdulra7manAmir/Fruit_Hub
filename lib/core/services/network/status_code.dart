import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import '../../../../config/i18n/generated/l10n.dart';

class StatusCodes
{
  final FirebaseGeneralAuthStatus generalAuth = FirebaseGeneralAuthStatus._();
  final FirebaseLoginStatus loginAuth = FirebaseLoginStatus._();
  final FirebaseRegisterStatus registerAuth = FirebaseRegisterStatus._();
  final FirebaseGoogleSignInStatus signInWithGoogle = FirebaseGoogleSignInStatus._();
  final FirebaseUploadImgStatus imgUpload = FirebaseUploadImgStatus._();
}


class FirebaseGeneralAuthStatus
{
  FirebaseGeneralAuthStatus._();

  String getMessageFromException(Object error)
  {
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


class FirebaseLoginStatus
{
  FirebaseLoginStatus._();

  String getMessageFromException(Object error) {
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


class FirebaseGoogleSignInStatus
{

  FirebaseGoogleSignInStatus._();

  String getMessageFromException(Object error) {
    if (error is FirebaseAuthException) {
      switch (error.code) {
        case 'account-exists-with-different-credential':
          return S.current.account_exists_with_different_credential;
        case 'invalid-credential':
          return S.current.invalid_credential;
        case 'operation-not-allowed':
          return S.current.operation_not_allowed;
        case 'user-disabled':
          return S.current.user_disabled;
        case 'user-not-found':
          return S.current.user_not_found;
        case 'network-request-failed':
          return S.current.network_request_failed;
        default:
          return S.current.google_signin_failed;
      }
    } 
    else if (error is PlatformException) {
      // Platform-specific Google Sign-In errors
      switch (error.code) {
        case 'network_error':
          return S.current.network_request_failed;
        case 'sign_in_canceled':
        case 'popup-closed-by-user':
        case 'canceled':
          return S.current.google_signin_canceled;
        case 'sign_in_failed':
          return S.current.google_signin_failed;
        default:
          return S.current.google_signin_failed;
      }
    }
    return S.current.google_signin_failed;
  }
}


class FirebaseRegisterStatus
{
  FirebaseRegisterStatus._();

  String getMessageFromException(Object error) {
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


class FirebaseUploadImgStatus
{
  FirebaseUploadImgStatus._();

  String getMessageFromException(Object error) {
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


