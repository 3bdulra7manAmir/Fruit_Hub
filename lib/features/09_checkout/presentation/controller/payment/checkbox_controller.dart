import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkbox_controller.g.dart';

@riverpod
class KeepCardCheckbox extends _$KeepCardCheckbox
{
  @override
  bool build()
  {
    const initialValue = false;
    log('Initial CheckBox State: $initialValue');
    return initialValue;
  }

  void toggle()
  {
    state = !state;
    log('CheckBox Toggled => $state');
  }
}

