import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_controller.g.dart';

@riverpod
class Theme extends _$Theme
{
  @override
  ThemeMode build() 
  {
    log('Default Theme Mode is: Light');
    return ThemeMode.dark; // Default is Light
  }

  void toggle()
  {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  void setLight()
  {
    log('Theme Mode is: Light');
    state = ThemeMode.light;
  }
  void setDark()
  {
    log('Theme Mode is: Dark');
    state = ThemeMode.dark;
  }
}
