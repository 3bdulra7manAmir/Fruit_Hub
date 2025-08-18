import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/utils/functions/toggle_button.dart';

part 'notification_controller.g.dart';

@riverpod
class ToggleSwitchNotifications extends _$ToggleSwitchNotifications with ToggleSwitchBase
{
  @override
  bool build() => false;

  void set(bool value) => state = value;
}
