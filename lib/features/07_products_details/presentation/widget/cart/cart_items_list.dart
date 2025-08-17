import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';
import '../../../../../core/widgets/listview_builder.dart';
import '../../controllers/cart_item_controller.dart';
import 'cart_item_card_body.dart';

class CartItemsListWidget extends ConsumerWidget
{
  const CartItemsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final items = ref.watch(cartItemsProvider);
    return CustomListviewBuilder(
      itemBuilder: (_, index)
      {
        final item = items[index];
        return SizedBox(
          height: 110.h,
          child: CartCardWidget(
            itemId: item.fruit.fruitId, itemImg: item.fruit.imgUrl,
            itemName: item.fruit.name, itemWeight: item.fruit.weight.toString(),
            itemPrice: item.fruit.price.toCleanString(), 
          ),
        );
      },
      separatorBuilder: (_, index) => Sizes.s8.verticalSpace,
      itemCount: items.length,
    );
  }
}