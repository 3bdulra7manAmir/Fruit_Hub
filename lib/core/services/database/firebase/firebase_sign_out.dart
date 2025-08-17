import '../../network/logger/requests_logger.dart';
import 'intsance/firebase_auth.dart';

class FirebaseSignout
{

  FirebaseSignout._();
  static final FirebaseSignout _instance = FirebaseSignout._();
  static FirebaseSignout get instance => _instance;

  Future<void> signOut() async
  {
    try
    {
      await FirebaseAuthService.instance.auth.signOut();
      AppLogger.firebaseAction('SignOut');
    } 
    catch (error, stack)
    {
      AppLogger.firebaseError('SignOut', error, stackTrace: stack);
      rethrow;
    }
  }

}