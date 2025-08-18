import 'package:firebase_app_check/firebase_app_check.dart';

class FirebaseAppChecker
{
  void firebaseAppChecker() async
  {
    await FirebaseAppCheck.instance.activate(
      androidProvider: AndroidProvider.debug, 
      appleProvider: AppleProvider.debug,
    );
  }
}