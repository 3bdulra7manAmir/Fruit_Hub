import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../database/firebase/intsance/firebase_auth.dart';
import '../../database/firebase/intsance/firebase_fire_store.dart';
import 'requests_logger.dart';

class FirebaseService
{
  final FirebaseAuth _auth = FirebaseAuthService.instance.auth;
  final FirebaseFirestore _firestore = FirebaseFireStoreService.instance.firestore;

  Future<User?> signIn(String email, String password) async
  {
    try
    {
      AppLogger.firebaseAction('SignIn', data: {'email': email});
      final userCred = await _auth.signInWithEmailAndPassword(email: email, password: password);
      AppLogger.firebaseAction('SignIn Success', data: {'uid': userCred.user?.uid});
      return userCred.user;
    }
    catch (e)
    {
      AppLogger.firebaseError('SignIn', e);
      rethrow;
    }
  }

  Future<void> addUserData(String uid, Map<String, dynamic> data) async
  {
    try
    {
      AppLogger.firebaseAction('AddUserData', data: {'uid': uid, ...data});
      await _firestore.collection('users').doc(uid).set(data);
      AppLogger.firebaseAction('AddUserData Success', data: {'uid': uid});
    }
    catch (e)
    {
      AppLogger.firebaseError('AddUserData', e);
      rethrow;
    }
  }
}
