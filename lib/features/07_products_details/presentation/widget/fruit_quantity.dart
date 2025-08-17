import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/numbers_and_dates.dart';
import '../../../../core/widgets/buttons/add_button.dart';
import '../controllers/cart_item_controller.dart';
import '../controllers/fruit_item_quantity_controller.dart';

class FruitQuantityChanger extends ConsumerWidget
{
  const FruitQuantityChanger({super.key, required this.fruitId});
  final String fruitId;
  
  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final quantity = ref.watch(fruitItemQuantityProvider(fruitId));
    return Row(
      children:
      [
        FruitAddButton(
          onTap: ()
          {
            log('Add has been Pressed...');
            ref.read(fruitItemQuantityProvider(fruitId).notifier).increment();
            final fruitInCart = ref.read(cartItemsProvider)
              .where((item) => item.fruit.fruitId == fruitId).firstOrNull;
            if (fruitInCart != null)
            {
              ref.read(cartItemsProvider.notifier).addItem(fruitInCart.fruit, 1);
            }
          },
        ),
        Sizes.s16.horizontalSpace,
        Text(quantity.toString().localizedNumbers(ref)!, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        Sizes.s16.horizontalSpace,
        FruitAddButton(
          onTap: ()
          {
            log('Subtract has been Pressed...');
            final quantity = ref.read(fruitItemQuantityProvider(fruitId));
            final cartNotifier = ref.read(cartItemsProvider.notifier);
            if (quantity > 1)
            {
              ref.read(fruitItemQuantityProvider(fruitId).notifier).decrement();
              final fruitInCart = ref.read(cartItemsProvider)
                .where((item) => item.fruit.fruitId == fruitId).firstOrNull;
              if (fruitInCart != null)
              {cartNotifier.addItem(fruitInCart.fruit, -1);}
            }
            else
            {
              log('Quantity reached 1 → Removing item...');
              cartNotifier.removeItem(fruitId);
            }
          },
          color: AppColors.color.kWhite002,
          img: AppAssets.icons.subtract,
        )
      ],
    );
  }
}

