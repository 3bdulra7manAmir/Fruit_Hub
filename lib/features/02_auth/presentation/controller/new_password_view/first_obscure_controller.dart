import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger/app_logger.dart';

part 'first_obscure_controller.g.dart';

@riverpod
class FirstObscurePassword extends _$FirstObscurePassword
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
