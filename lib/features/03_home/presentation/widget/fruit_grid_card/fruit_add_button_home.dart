import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/buttons/add_button.dart';
import '../../../../07_products_details/presentation/controllers/cart_item_controller.dart';
import '../../../../07_products_details/presentation/controllers/fruit_item_quantity_controller.dart';
import '../../../domain/entity/fruit_entity.dart';

class FruitAddButtonHomeWidget extends ConsumerWidget
{
  const FruitAddButtonHomeWidget({super.key, required this.fruit});

  final FruitEntity fruit;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return FruitAddButton(onTap:() => fruitAddButtonOnTap(ref));
  }

  void fruitAddButtonOnTap(WidgetRef ref)
  {
    AppLogger.debug('Add has been Pressed...');
    ref.read(fruitItemQuantityProvider(fruit.fruitId).notifier).increment();
    final fruitInCart = ref.read(cartItemsProvider).where((item) => item.fruit.fruitId == fruit.fruitId).firstOrNull;
    if (fruitInCart != null)
    {ref.read(cartItemsProvider.notifier).addItem(fruitInCart.fruit, 1);}
    else
    {ref.read(cartItemsProvider.notifier).addItem(fruit, 1);}
  }
}