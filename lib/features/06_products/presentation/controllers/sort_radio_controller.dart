import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sort_radio_controller.g.dart';

enum SortOptions { highToLow, lowToHigh, alphabetOrder }

@riverpod
class SortRadio extends _$SortRadio {
  @override
  SortOptions build() => SortOptions.lowToHigh;

  void select(SortOptions option) {
    state = option;
  }
}
