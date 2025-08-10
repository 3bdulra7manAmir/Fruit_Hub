import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/helpers/functions/toggle_button.dart';

part 'save_address_controller.g.dart';

@riverpod
class ToggleSwitchSaveAddress extends _$ToggleSwitchSaveAddress with ToggleSwitchBase
{
  @override
  bool build()
  {
    log('Initial State: false');
    return false;
  }

  @override
  void toggle() => state = !state;
}
