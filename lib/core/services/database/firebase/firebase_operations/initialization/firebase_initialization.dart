import 'package:firebase_core/firebase_core.dart';

import '../../../../../../firebase_options.dart';
import '../../../../../utils/logger/app_logger.dart';


class FirebaseInitialization
{

  Future<void> firebaseInit() async
  {
    try
    {
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
      AppLogger.firebaseAction('Firebase Init Done... no issues');
    }
    on Exception catch (error, stack)
    {
      AppLogger.firebaseError('Firebase Initialization...', error, stackTrace: stack);
    }
  }

}