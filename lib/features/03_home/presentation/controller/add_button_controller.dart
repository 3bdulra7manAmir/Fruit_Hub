import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../03_home/domain/entity/fruit_entity.dart';
import '../../../07_products_details/presentation/controllers/cart_item_controller.dart';
import '../../../07_products_details/presentation/controllers/fruit_item_quantity_controller.dart';

part 'add_button_controller.g.dart';

@riverpod
class AddButton extends _$AddButton
{
  @override
  void build()
  {
    // مفيش state عند البروفايدر ده (informing only)
    return;
  }

  void addFruit(FruitEntity fruit, WidgetRef ref)
  {
    // زود quantity
    ref.read(fruitItemQuantityProvider.notifier).increment();
    // هات القيمة الجديدة
    final quantity = ref.read(fruitItemQuantityProvider);
    // زودها على cart
    ref.read(cartItemsProvider.notifier).addItem(fruit);
    // ✅ تقدر تعمل reset للـ quantity بعد الإضافة (اختياري)
    ref.read(fruitItemQuantityProvider.notifier).reset();
  }
}
