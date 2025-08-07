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
    Future.microtask(loadSavedTheme);
    AppColors.i.themeMode = 'light';
    return ThemeMode.light;
  }

  ///[Load_Save_Them_ON_APP_START]
  Future<void> loadSavedTheme() async {
    final saved = SharedPrefManager().themeMode;
    final isDark = saved == 'dark';
    state = isDark ? ThemeMode.dark : ThemeMode.light;
    AppColors.i.themeMode = saved;
  }

  ///[Switch_Between_Themes] For Toggle Button
  void toggle() {
    final newMode = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    _changeTheme(newMode);
  }

  ///[Switch_Between_Themes] Logic of the Toggle Button
  void _changeTheme(ThemeMode mode) {
    state = mode;
    final modeName = mode.name;
    AppColors.i.themeMode = modeName;
    SharedPrefManager().setThemeMode(modeName);
    _rebuildUI();
  }

  ///[Force_Current_Childer_or_View_to_Rebuild] 
  void _rebuildUI() {
    final ctx = AppRouter.navigatorState.currentContext;
    if (ctx is Element) ctx.visitChildren(rebuild);
  }
}
