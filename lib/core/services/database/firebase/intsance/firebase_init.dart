import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';

import '../../../../../firebase_options.dart';


class FirebaseInitial
{

  Future<void> firebaseInit() async
  {
    try
    {
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
      log('Firebase Init Done... no issues');
    }
    on Exception catch (e, stack)
    {
      log('error Within Firebase Init... error is: $e ${'\n\n'} error Stack: $stack');
    }
  }

}