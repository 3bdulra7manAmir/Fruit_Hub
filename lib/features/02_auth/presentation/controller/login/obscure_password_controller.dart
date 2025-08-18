import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/logger/app_logger.dart';

part 'obscure_password_controller.g.dart';

@riverpod
class LoginObscurePassword extends _$LoginObscurePassword
{
  @override
  bool build()
  {
    return true;
  }

  void toggle()
  { 
    AppLogger.debug('obscure text state is: $state');
    state = !state;
  }
}
