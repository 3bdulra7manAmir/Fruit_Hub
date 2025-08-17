import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService
{
  FirebaseAuthService._();

  static final FirebaseAuthService _instance = FirebaseAuthService._();
  static FirebaseAuthService get instance => _instance;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseAuth get auth => _auth;
}
