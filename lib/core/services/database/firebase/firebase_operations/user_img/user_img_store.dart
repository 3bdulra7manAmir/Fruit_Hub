import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../utils/logger/app_logger.dart';
import '../../firebase_services/firebase_auth.dart';
import '../../firebase_services/firebase_fire_store.dart';
import '../../firebase_services/firebase_storage.dart';


class FirebaseUserImgStore
{
  factory FirebaseUserImgStore() => _instance;
  FirebaseUserImgStore._internal();
  static final FirebaseUserImgStore _instance = FirebaseUserImgStore._internal();

  /// [Upload User's IMG]
  Future<String> uploadUserImg({
    required File imageFile,
    bool updateAuth = true,
    bool saveToFirestore = true,
  }) async {
    try
    {
      final user = FirebaseAuthService.instance.auth.currentUser;
      if (user == null) throw Exception('No authenticated user found.');

      final ref = FirebaseStorageService.instance.storage
        .ref()
          .child('users/${user.uid}/profile.jpg');
      
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


