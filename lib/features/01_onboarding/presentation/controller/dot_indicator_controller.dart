import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/logger/app_logger.dart';

part 'dot_indicator_controller.g.dart';

@riverpod
class DotIndicator extends _$DotIndicator
{
  @override
  int build() 
  {
    AppLogger.debug('Indicator Page => 0');
    return 0;
  }

  void set(int value)
  { 
    AppLogger.debug('Indicator Page => $value');
    state = value;
  }
}
