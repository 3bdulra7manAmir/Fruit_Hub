import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../config/theme/theme_controller/theme_controller.dart';
import '../../../../../core/utils/functions/toggle_button.dart';

part 'theme_informer.g.dart';  


@riverpod
class ThemeInformer extends _$ThemeInformer with ToggleSwitchBase
{
  @override
  bool build()
  {
    final currentMode = ref.watch(themeProvider);
    return currentMode == ThemeMode.dark;
  }

  @override
  void toggle()
  {
    final newState = !state;
    state = newState;
    ref.read(themeProvider.notifier).toggle();
    //ref.refresh(themeProvider);
  }
}
