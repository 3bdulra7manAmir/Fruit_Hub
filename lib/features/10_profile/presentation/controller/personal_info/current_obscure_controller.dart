import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger/app_logger.dart';

part 'current_obscure_controller.g.dart';

@riverpod
class CurrentObscurePassword extends _$CurrentObscurePassword
{
  @override
  bool build()
  {
    AppLogger.debug('inital State is: True');
    return true;
  }

  void toggle()
  { 
    AppLogger.debug('obscure text state is: $state');
    state = !state;
  }
}
