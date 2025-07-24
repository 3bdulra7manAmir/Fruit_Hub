import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'obscure_password_controller.g.dart';

@riverpod
class RegisterObscurePassword extends _$RegisterObscurePassword
{
  @override
  bool build()
  {
    log('inital State is: True');
    return true;
  }

  void toggle()
  { 
    log('obscure text state is: $state');
    state = !state;
  }
}
