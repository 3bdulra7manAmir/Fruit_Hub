import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../network/status_code.dart';
import 'firebase_auth.dart';

class FirebaseGoogleSignIn {
  FirebaseGoogleSignIn._();

  static final FirebaseGoogleSignIn _instance = FirebaseGoogleSignIn._();
  static FirebaseGoogleSignIn get instance => _instance;

  /// [Initialize GoogleSignIn with serverClientId for Android]
  Future<void> initializeGoogleSignIn() async
  {
    try
    {
      const String serverClientId = '687671543432-dd1jei5n4krjg7ipu982s1snr915m9f2.apps.googleusercontent.com';
      await GoogleSignIn.instance.initialize(serverClientId: serverClientId);
      log('initialize SignIn with google Done...');
    }
    catch (error, stack)
    {
      log('Firebase SignIn error: $error,, Stack: $stack');
      rethrow;
    }
  }


  Future<UserCredential?> signInWithGoogle() async
  {
    try
    {
      await initializeGoogleSignIn();
      await GoogleSignIn.instance.signOut();

      GoogleSignInAccount? googleUser = await GoogleSignIn.instance.attemptLightweightAuthentication(reportAllExceptions: true);
      googleUser ??= await GoogleSignIn.instance.authenticate();

      final googleAuth = googleUser.authentication;
      final authorization = await googleUser.authorizationClient.authorizationForScopes(['email', 'profile']);

      if (authorization == null)
      {
        log(S.current.google_signin_failed);
        return null;
      }

      final credential = GoogleAuthProvider.credential(idToken: googleAuth.idToken, accessToken: authorization.accessToken,);
      return await AuthService.instance.auth.signInWithCredential(credential);
    }
    on GoogleSignInException catch (error, stack)
    {
      log('${StatusCodes().signInWithGoogle.getMessageFromException(error)}, Stack: $stack');
      return null;
    }
    on PlatformException catch (error, stack)
    {
      log('${StatusCodes().signInWithGoogle.getMessageFromException(error)}, Stack: $stack');
      return null;
    }
    catch (error, stack)
    {
      log('${StatusCodes().signInWithGoogle.getMessageFromException(error)}, Stack: $stack');
      rethrow;
    }
  }
}
