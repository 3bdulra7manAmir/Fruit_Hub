import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_controller.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier
{
  @override
  ThemeMode build() 
  {
    log("Theme Mode Default is: Light");
    return ThemeMode.light; // Default is Light
  }

  void toggle()
  {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  void setLight()
  {
    log("Theme Mode is: Light");
    state = ThemeMode.light;
  }
  void setDark()
  {
    log("Theme Mode is: Dark");
    state = ThemeMode.dark;
  }
}
