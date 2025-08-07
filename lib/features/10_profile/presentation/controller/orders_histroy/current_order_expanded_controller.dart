import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_order_expanded_controller.g.dart';

@riverpod
class CurrentOrderExpanded extends _$CurrentOrderExpanded {
  @override
  bool build() => false;

  void toggle() => state = !state;

  void expand() => state = true;

  void collapse() => state = false;
}
