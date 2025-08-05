import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'localization_controller.g.dart';

@riverpod
class Localization extends _$Localization
{
  @override
  Locale build()
  {
    log('Default Localization is: ar');
    return const Locale('ar'); // default is Arabic
  }

  void setEnglish()
  {
    state = const Locale('en');
    log('Localization is now: EN');
  }

  void setArabic()
  {
    state = const Locale('ar');
    log('Localization is now: AR');
  }
}
