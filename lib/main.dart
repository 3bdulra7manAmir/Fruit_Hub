// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/services/database/firebase/firebase_init.dart';
import 'core/services/database/shared_preferences/shared_pref_init.dart';
import 'core/utils/screen_protection.dart';
import 'main_app.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
  await FirebaseInitial().firebaseInit();
  await SharedPrefInit.init();
  await dotenv.load(fileName: 'keys/keys.env');
  //await ScreenProtection.enable();

  runApp(const ProviderScope(child: ECommerceApp()));
}