import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../utils/logger/app_logger.dart';
import '../../firebase_services/firebase_auth.dart';
import '../../firebase_services/firebase_fire_store.dart';
import '../../firebase_services/firebase_storage.dart';

class FirebaseUserImgDelete
{
  factory FirebaseUserImgDelete() => _instance;
  FirebaseUserImgDelete._internal();
  static final FirebaseUserImgDelete _instance = FirebaseUserImgDelete._internal();

  /// Delete User's IMG from Storage
  Future<void> deleteUserImg({bool clearAuth = true}) async
  {
    try
    {
      final user = FirebaseAuthService.instance.auth.currentUser;
      if (user == null) throw Exception('No authenticated user found.');

      final ref = FirebaseStorageService.instance.storage
        .ref()
          .child('users/${user.uid}/profile.jpg');
      await ref.delete();

      if (clearAuth) {
        await user.updatePhotoURL(null);
        await user.reload();
      }

      await FirebaseFireStoreService.instance.firestore
        .collection('users')
          .doc(user.uid)
            .set({'photoURL': null}, SetOptions(merge: true));

      // -------- Logging ----------
      AppLogger.firebaseAction('DeleteUserImage', data: {'uid': user.uid});
    } catch (error, stack) {
      AppLogger.firebaseError('DeleteUserImage', error, stackTrace: stack);
      throw Exception('Failed to delete image: $error, stack: $stack');
    }
  }
}
