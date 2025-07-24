import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../color_manager/colors.dart';

part 'theme_controller.g.dart';

@riverpod
class Theme extends _$Theme
{
  @override
  ThemeMode build() 
  {
    log('Default Theme Mode is: Light');
    return ThemeMode.light; // Default is Light
  }

  void toggle()
  {
    if (state == ThemeMode.light)
    {
      setDark();
    }
    else
    {
      setLight();
    }
  }

  void setLight()
  {
    log('Theme Mode is: Light');
    AppColors.i.themeMode = 'light';
    state = ThemeMode.light;
  }

  void setDark()
  {
    log('Theme Mode is: Dark');
    AppColors.i.themeMode = 'dark';
    state = ThemeMode.dark;
  }
}
