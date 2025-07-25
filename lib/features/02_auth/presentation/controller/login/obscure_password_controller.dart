import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
    log('obscure text state is: $state');
    state = !state;
  }
}
