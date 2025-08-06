import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/services/firebase/firebase_init.dart';
import 'main_app.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
  await FirebaseInitial().firebaseInit();
  
  runApp(const ProviderScope(child: ECommerceApp()));
}