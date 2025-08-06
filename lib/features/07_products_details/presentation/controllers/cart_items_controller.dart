import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_items_controller.g.dart';

class CartItem {
  CartItem({required this.id});
  final int id;
}

@riverpod
class CartItems extends _$CartItems {
  @override
  List<CartItem> build() {
    return List.generate(3, (index) => CartItem(id: index)); // dummy data
  }

  void removeItem(int id) {
    state = state.where((item) => item.id != id).toList();
  }
}
