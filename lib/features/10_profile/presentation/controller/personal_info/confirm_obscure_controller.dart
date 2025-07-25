import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'confirm_obscure_controller.g.dart';

@riverpod
class ConfirmObscurePassword extends _$ConfirmObscurePassword
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
