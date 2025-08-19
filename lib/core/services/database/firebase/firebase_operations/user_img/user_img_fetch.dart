import '../../../../../utils/logger/app_logger.dart';
import '../../firebase_services/firebase_auth.dart';
import '../../firebase_services/firebase_fire_store.dart';

class FirebaseUserImgFetch
{
  factory FirebaseUserImgFetch() => _instance;
  FirebaseUserImgFetch._internal();
  static final FirebaseUserImgFetch _instance = FirebaseUserImgFetch._internal();

  /// [Fetch User IMG Link from Firebase Auth]
  Future<String?> fetchUserImg({bool fromFirestore = false}) async
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
        return doc.data()?['photoURL'] as String? ?? 'https://firebasestorage.googleapis.com/v0/b/fruithub-c78be.firebasestorage.app/o/default_user_img%2FUser.png?alt=media&token=2f1dba31-7c91-4e64-a21e-76c35d7c96d7';
      } 
      else
      {
        return user.photoURL;
      }
    } 
    catch (error, stack)
    {
      AppLogger.firebaseError('FetchUserImage', error, stackTrace: stack);
      throw Exception('Failed to fetch image: $error, stack: $stack');
    }
  }

}
