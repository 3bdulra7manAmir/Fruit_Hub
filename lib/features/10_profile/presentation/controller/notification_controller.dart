import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_controller.g.dart';

@riverpod
class ToggleSwitchNotifications extends _$ToggleSwitchNotifications
{
  @override
  bool build() => false;

  void toggle() => state = !state;
  void set(bool value) => state = value;
}
