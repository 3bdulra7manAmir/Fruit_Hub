import 'package:firebase_auth/firebase_auth.dart';

class FirebaseActionCodeHelper
{
  static ActionCodeSettings resetPasswordSettings = ActionCodeSettings(
    url: 'https://fruithub-c78be.firebaseapp.com/reset',
    handleCodeInApp: true,
    androidInstallApp: true,
    androidPackageName: 'com.example.e_commerce_app',
    iOSBundleId: 'com.example.eCommerceApp',
    androidMinimumVersion: '21',
  );
}