// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/services/database/firebase/firebase_operations/initialization/firebase_app_check.dart';
import 'core/services/database/firebase/firebase_operations/initialization/firebase_initialization.dart';
import 'core/services/database/keys/app_database.dart';
import 'core/services/database/shared_preferences/shared_pref_initialization.dart';
import 'main_app.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
  await SharedPrefInit.init();
  await AppLocalDatabase.instance.init();
  await FirebaseInitialization().firebaseInit();
  FirebaseAppChecker().firebaseAppChecker();
  //await dotenv.load(fileName: 'keys/keys.env');
  //await ScreenProtection.enable();

  runApp(const ProviderScope(child: ECommerceApp()));
}