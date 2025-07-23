import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/toggle.dart';

part 'save_address_controller.g.dart';

@riverpod
class ToggleSwitchSaveAddress extends _$ToggleSwitchSaveAddress  with ToggleSwitchBase
{
  @override
  bool build() => false;

  void set(bool value) => state = value;
}
