import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/services/database/shared_preferences/shared_pref_manager.dart';
import '../../../core/utils/logger/app_logger.dart';

part 'localization_controller.g.dart';

@riverpod
class Localization extends _$Localization
{
  @override
  Locale build()
  {
    final saved = SharedPrefManager().localeLang;
    AppLogger.debug('Default Localization is: $saved');
    return Locale(saved); // 'en' or 'ar'
  }

  void setEnglish() {
    state = const Locale('en');
    SharedPrefManager().setLocaleLang('en');
    AppLogger.debug('Localization is now: EN');
  }

  void setArabic() {
    state = const Locale('ar');
    SharedPrefManager().setLocaleLang('ar');
    AppLogger.debug('Localization is now: AR');
  }
}
