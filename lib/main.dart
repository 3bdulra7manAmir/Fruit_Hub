import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/services/database/firebase/firebase_init.dart';
import 'core/services/database/shared_preferences/shared_pref_init.dart';
import 'main_app.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
  await FirebaseInitial().firebaseInit();
  await SharedPrefInit.init();

  //WidgetsBinding.instance.allowFirstFrame();
  runApp(const ProviderScope(child: ECommerceApp()));
}