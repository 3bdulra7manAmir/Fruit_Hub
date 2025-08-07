import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/services/database/shared_preferences/shared_pref_manager.dart';
import '../../../core/extensions/rebuild.dart';
import '../../router/app_router.dart';
import '../color_manager/colors.dart';

part 'theme_controller.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  ThemeMode build() {
    final themeString = SharedPrefManager().themeMode;
    log('Loaded Theme from SharedPrefs: $themeString');

    final appThemeMode = switch (themeString) {
      'dark' => ThemeMode.dark,
      'light' => ThemeMode.light,
      _ => ThemeMode.system
    };

    AppColors.i.themeMode = appThemeMode.name;
    return appThemeMode;
  }

  void toggle() {
    final mode = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    _changeTheme(mode);
    _saveTheme(mode);
    (AppRouter.navigatorState.currentContext as Element).visitChildren(rebuild);
  }

  void _changeTheme(ThemeMode mode) {
    state = mode;
    AppColors.i.themeMode = mode.name;
    // log(mode.name);
  }

  void _saveTheme(ThemeMode mode) {
    SharedPrefManager().setThemeMode(mode.name);
  }
}
