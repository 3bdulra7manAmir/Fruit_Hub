import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mark_as_read_controller.g.dart';

@riverpod
class MarkAsRead extends _$MarkAsRead
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
