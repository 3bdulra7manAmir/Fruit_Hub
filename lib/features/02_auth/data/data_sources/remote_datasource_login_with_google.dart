import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/database/firebase/firebase_services/firebase_auth.dart';
import '../../../../core/services/database/firebase/firebase_services/firebase_fire_store.dart';
import '../../../../core/services/network/status_code.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/entity/login_with_google_entity.dart';

part 'remote_datasource_login_with_google.g.dart';

class RemoteLoginGoogleDataSource
{
  const RemoteLoginGoogleDataSource();

  Future<LoginWithGoogleEntity> loginWithGoogle() async
  {
    try
    {
      const String serverClientId ='687671543432-dd1jei5n4krjg7ipu982s1snr915m9f2.apps.googleusercontent.com';
      await GoogleSignIn.instance.initialize(serverClientId: serverClientId);
      AppLogger.firebaseAction('initialize SignIn with google Done...');

      await GoogleSignIn.instance.signOut();

      GoogleSignInAccount? googleUser = await GoogleSignIn.instance
        .attemptLightweightAuthentication(reportAllExceptions: true);
      googleUser ??= await GoogleSignIn.instance.authenticate();

      final googleAuth = googleUser.authentication;
      final authorization = await googleUser.authorizationClient.authorizationForScopes(
        ['email', 'profile'],
      );

      if (authorization == null) {
        AppLogger.error('google_signin_failed');
        throw Exception('google_signin_failed');
      }

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: authorization.accessToken,
      );

      final userCredential = await FirebaseAuthService.instance.auth
        .signInWithCredential(credential);

      final user = userCredential.user;
      if (user == null) {
        AppLogger.error('User is null after signInWithCredential');
        throw Exception('Google Sign-In failed: user is null');
      }

      final uid = userCredential.user?.uid;
      if (uid != null) {
        final userDoc = FirebaseFireStoreService.instance.firestore.collection('users').doc(uid);
        await userDoc.set({
          'userId': uid,
          'userEmail': userCredential.user?.email,
          'photoURL': userCredential.user?.photoURL,
        });
      }

      return LoginWithGoogleEntity(
        id: user.uid,
        email: user.email ?? '',
        name: user.displayName,
        photoUrl: user.photoURL,
      );

    } 
    on GoogleSignInException catch (error, stack)
    {
      AppLogger.error('${StatusCodes().signInWithGoogle.getMessageFromException(error)}, Stack: $stack');
      throw Exception('Google Sign-In failed: Error: $error\n Stack: $stack');
    } 
    on PlatformException catch (error, stack)
    {
      AppLogger.error('${StatusCodes().signInWithGoogle.getMessageFromException(error)}, Stack: $stack');
      throw Exception('Google Sign-In failed: Error: $error\n Stack: $stack');
    } 
    catch (error, stack)
    {
      AppLogger.error('${StatusCodes().signInWithGoogle.getMessageFromException(error)}, Stack: $stack');
      rethrow;
    }
  }
}

@riverpod
RemoteLoginGoogleDataSource remoteLoginGoogleDataSource(Ref ref) =>
    const RemoteLoginGoogleDataSource();
