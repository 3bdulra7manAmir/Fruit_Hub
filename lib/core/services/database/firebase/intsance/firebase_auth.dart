import 'package:firebase_auth/firebase_auth.dart';

import '../../../../utils/logger/app_logger.dart';
import '../../shared_preferences/shared_pref_manager.dart';

class FirebaseAuthService
{
  FirebaseAuthService._();

  static final FirebaseAuthService _instance = FirebaseAuthService._();
  static FirebaseAuthService get instance => _instance;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseAuth get auth => _auth;

  /* Get the "header X-Firebase-Locale" Request Language...
  language from the SharedPref Same As AppLanguage if you like to  */
  Future<void> get langCode => auth.setLanguageCode(SharedPrefManager().localeLang);
  void logRequestCode()
  {
    if (FirebaseAuthService.instance.auth.languageCode == SharedPrefManager().localeLang)
    {
      AppLogger.info('requestLanguage: is ${FirebaseAuthService.instance.auth.languageCode}');
    }
  }
  
}
