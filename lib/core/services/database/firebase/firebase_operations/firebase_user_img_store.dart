import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../network/logger/app_logger.dart';
import '../intsance/firebase_auth.dart';
import '../intsance/firebase_fire_store.dart';
import '../intsance/firebase_storage.dart';


class FirebaseUserImgStore
{
  factory FirebaseUserImgStore() => _instance;
  FirebaseUserImgStore._internal();
  static final FirebaseUserImgStore _instance = FirebaseUserImgStore._internal();

  /// [Upload User's IMG]
  Future<String> uploadUserImage({
    required File imageFile,
    bool updateAuth = true,
    bool saveToFirestore = true,
  }) async
  {
    try {
      final user = FirebaseAuthService.instance.auth.currentUser;
      if (user == null) throw Exception('No authenticated user found.');

      final ref = FirebaseStorageService.instance.storage
          .ref().child('users/${user.uid}/profile.jpg');
      
      await ref.putFile(imageFile); // IMG Upload

      final downloadUrl = await ref.getDownloadURL(); // Fetch Download Link
      if (updateAuth) // Upload IMG Link in firebase Auth
      {
        await user.updatePhotoURL(downloadUrl);
        await user.reload();
      }

      // Save IMG Link in Firebase Firestore
      if (saveToFirestore)
      {
        await FirebaseFireStoreService.instance.firestore
            .collection('users')
            .doc(user.uid)
            .set({'photoURL': downloadUrl}, SetOptions(merge: true));
      }

      // -------- Logging ----------
      AppLogger.firebaseAction('UploadUserImage', data: {
        'uid': user.uid,
        'downloadUrl': downloadUrl,
      });

      return downloadUrl;
    }
    catch (error, stack)
    {
      AppLogger.firebaseError('UploadUserImage', error, stackTrace: stack);
      throw Exception('Image upload failed: $error,, stack: $stack');
    }
  }

}


class FirebaseUserImgFetch
{
  factory FirebaseUserImgFetch() => _instance;
  FirebaseUserImgFetch._internal();
  static final FirebaseUserImgFetch _instance = FirebaseUserImgFetch._internal();

  /// [Fetch User IMG Link from Firebase Auth]
  Future<String?> fetchUserImage({bool fromFirestore = false}) async
  {
    try
    {
      final user = FirebaseAuthService.instance.auth.currentUser;
      if (user == null) return null;

      if (fromFirestore)
      {
        final doc = await FirebaseFireStoreService.instance.firestore
            .collection('users')
            .doc(user.uid)
            .get();
        return doc.data()?['photoURL'] as String?;
      } else {
        return user.photoURL;
      }
    } catch (error, stack) {
      AppLogger.firebaseError('FetchUserImage', error, stackTrace: stack);
      throw Exception('Failed to fetch image: $error, stack: $stack');
    }
  }

}


class FirebaseUserImgDelete
{
  factory FirebaseUserImgDelete() => _instance;
  FirebaseUserImgDelete._internal();
  static final FirebaseUserImgDelete _instance = FirebaseUserImgDelete._internal();

  /// Delete User's IMG from Storage
  Future<void> deleteUserImage({bool clearAuth = true}) async
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