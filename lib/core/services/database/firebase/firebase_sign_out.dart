import 'dart:developer';
import 'firebase_auth.dart';

class FirebaseSignout
{

  FirebaseSignout._();

  static final FirebaseSignout _instance = FirebaseSignout._();
  static FirebaseSignout get instance => _instance;

  Future<void> signOut() async {
    try
    {
      await AuthService.instance.auth.signOut();
      log('SignOut Done..........');
    }
    catch (e)
    {
      log('Error during sign-out: $e');
      rethrow;
    }
  }
}