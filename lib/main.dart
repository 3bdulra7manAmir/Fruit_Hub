import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/services/database/firebase/intsance/firebase_initialization.dart';
import 'core/services/database/shared_preferences/shared_pref_init.dart';
import 'main_app.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
  await FirebaseInitialization().firebaseInit();
  await SharedPrefInit.init();
  await dotenv.load(fileName: 'keys/keys.env');
  //await ScreenProtection.enable();

  runApp(const ProviderScope(child: ECommerceApp()));
}