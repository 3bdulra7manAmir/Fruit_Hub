import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/fruit_item.dart';

part 'add_button_controller.g.dart';

@riverpod
class AddButton extends _$AddButton {
  @override
  List<FruitItemModel> build() {
    return []; // initially empty
  }

  void addItem(FruitItemModel item) {
    state = [...state, item];
  }

  void removeItem(int id) {
    state = state.where((element) => element.id != id).toList();
  }
}
