import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization_controller.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier
{
  @override
  Locale build()
  {
    log("Default Localization is : EN");
    return const Locale('ar'); // default is English
  } 
  
  void toggle()
  {
    state = state.languageCode == 'en'
      ? const Locale('ar')
    : const Locale('en');
  }

  void setEnglish()
  {
    log("Localization is now: EN");
    state = const Locale('en');
  } 

  void setArabic()
  {
    log("Localization is now: Ar");
    state = const Locale('ar');
  } 
}
