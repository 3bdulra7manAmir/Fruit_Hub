import 'dart:io';

import 'intsance/firebase_auth.dart';
import 'intsance/firebase_fire_store.dart';
import 'intsance/firebase_storage.dart';

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
    try
    {
      final user = FirebaseAuthService.instance.auth.currentUser;
      if (user == null) throw Exception('No authenticated user found.');

      final ref = FirebaseStorageService.instance.storage.ref().child('users/${user.uid}/profile.jpg'); // Storage PATH
      await ref.putFile(imageFile); // IMG Upload
      final downloadUrl = await ref.getDownloadURL(); // Fetch Download Link

      // Upload IMG Link in firebase Auth
      if (updateAuth)
      {
        await user.updatePhotoURL(downloadUrl);
        await user.reload();
      }

      // Save IMG Link in Firebase Fire_Store
      if (saveToFirestore)
      {
        await FirebaseFireStoreService.instance.firestore.collection('users').doc(user.uid).update({
          'photoURL': downloadUrl,
        });
      }

      return downloadUrl;
    }
    catch (error, stack)
    {
      throw Exception('Image upload failed: $error,, stack: $stack');
    }
  }

  /// [Fetch User IMG Link from Firebase Auth]
  Future<String?> fetchUserImage({bool fromFirestore = false}) async
  {
    try
    {
      final user = FirebaseAuthService.instance.auth.currentUser;
      if (user == null) return null;

      if (fromFirestore)
      {
        final doc = await FirebaseFireStoreService.instance.firestore.collection('users').doc(user.uid).get();
        return doc.data()?['photoURL'] as String?;
      }
      else
      {
        return user.photoURL;
      }
    }
    catch (error, stack)
    {
      throw Exception('Failed to fetch image: $error, stack: $stack');
    }
  }

  /// Delete User's IMG from Storage
  Future<void> deleteUserImage({bool clearAuth = true}) async
  {
    try
    {
      final user = FirebaseAuthService.instance.auth.currentUser;
      if (user == null) throw Exception('No authenticated user found.');

      final ref = FirebaseStorageService.instance.storage.ref().child('users/${user.uid}/profile.jpg');
      await ref.delete();

      if (clearAuth)
      {
        await user.updatePhotoURL(null);
        await user.reload();
      }

      await FirebaseFireStoreService.instance.firestore.collection('users').doc(user.uid).update({
        'photoURL': null,
      });
    }
    catch (error, stack)
    {
      throw Exception('Failed to delete image: $error, stack: $stack');
    }
  }
}
