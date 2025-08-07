import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/services/database/shared_preferences/shared_pref_manager.dart';


part 'localization_controller.g.dart';

@riverpod
class Localization extends _$Localization
{
  @override
  Locale build()
  {
    final saved = SharedPrefManager().localeLang;
    log('Default Localization is: $saved');
    return Locale(saved); // 'en' or 'ar'
  }

  void setEnglish() {
    state = const Locale('en');
    SharedPrefManager().setLocaleLang('en');
    log('Localization is now: EN');
  }

  void setArabic() {
    state = const Locale('ar');
    SharedPrefManager().setLocaleLang('ar');
    log('Localization is now: AR');
  }
}
