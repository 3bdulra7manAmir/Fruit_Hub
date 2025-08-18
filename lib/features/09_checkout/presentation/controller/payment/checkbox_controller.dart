import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger/app_logger.dart';

part 'checkbox_controller.g.dart';

@riverpod
class KeepCardCheckbox extends _$KeepCardCheckbox
{
  @override
  bool build()
  {
    const initialValue = false;
    AppLogger.debug('Initial CheckBox State: $initialValue');
    return initialValue;
  }

  void toggle()
  {
    state = !state;
    AppLogger.debug('CheckBox Toggled => $state');
  }
}

