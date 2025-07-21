import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_controller.g.dart';

@riverpod
class ToggleSwitchLanguage extends _$ToggleSwitchLanguage
{
  @override
  bool build() => false;

  void toggle() => state = !state;
  void set(bool value) => state = value;
}
