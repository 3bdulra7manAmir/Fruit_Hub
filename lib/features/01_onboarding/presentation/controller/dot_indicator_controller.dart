import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dot_indicator_controller.g.dart';

@riverpod
class DotIndicator extends _$DotIndicator
{
  @override
  int build() 
  {
    log("Indicator Page => 0");
    return 0;
  }

  void set(int value)
  { 
    log("Indicator Page => $value");
    state = value;
  }
}
