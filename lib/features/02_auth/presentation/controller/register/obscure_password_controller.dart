import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger/app_logger.dart';

part 'obscure_password_controller.g.dart';

@riverpod
class RegisterObscurePassword extends _$RegisterObscurePassword
{
  @override
  bool build()
  {
    AppLogger.debug('inital State is: True');
    return true;
  }

  void toggle()
  { 
    state = !state;
    AppLogger.debug('obscure text state is: $state');
  }
}
