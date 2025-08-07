import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fruit_item_quantity_controller.g.dart';

@riverpod
class FruitItemQuantity extends _$FruitItemQuantity
{
  @override
  int build() => 1;
  
  void increment() => state++;

  void decrement()
  {
    if (state > 1) state--;
  }
}
