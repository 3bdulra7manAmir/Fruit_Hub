import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../config/theme/theme_controller/theme_controller.dart';

part 'theme_informer.g.dart';


@riverpod
class ThemeInformer extends _$ThemeInformer
{
  @override
  bool build()
  {
    final currentMode = ref.watch(themeProvider); // false = light, true = dark
    return currentMode == ThemeMode.dark;
  }

  void toggle()
  {
    final newState = !state;
    state = newState;
    ref.read(themeProvider.notifier).toggle();
  }

  void set(bool isDark)
  {
    state = isDark;
    if (isDark)
    {
      ref.read(themeProvider.notifier).setDark();
    }
    else
    {
      ref.read(themeProvider.notifier).setLight();
    }
  }
}
