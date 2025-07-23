import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin ToggleSwitchBase on AutoDisposeNotifier<bool>
{
  void toggle() => state = !state;
}
