import 'dart:developer';
import 'intsance/firebase_auth.dart';

class FirebaseSignout
{

  FirebaseSignout._();

  static final FirebaseSignout _instance = FirebaseSignout._();
  static FirebaseSignout get instance => _instance;

  Future<void> signOut() async {
    try
    {
      await FirebaseAuthService.instance.auth.signOut();
      log('SignOut Done..........');
    }
    catch (error, stack)
    {
      log('Error during sign-out: $error, Stack: $stack');
      rethrow;
    }
  }
}