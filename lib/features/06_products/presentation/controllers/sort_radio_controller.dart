import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../widget/sort_modal_sheet/radio_card.dart';

part 'sort_radio_controller.g.dart';

@riverpod
class SortRadio extends _$SortRadio
{
  @override
  SingingCharacter build() => SingingCharacter.low2Hight;

  void select(SingingCharacter value)
  {
    state = value;
  }
}
