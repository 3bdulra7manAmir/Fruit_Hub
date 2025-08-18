import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../controllers/cart_item_controller.dart';
import 'cart_item_price_text.dart';
import 'cart_trash_img.dart';

class CartItemPriceWidget extends ConsumerWidget
{
  const CartItemPriceWidget({super.key, 
  required this.itemId,
  required this.itemPrice,
  required this.itemWeight,
  });
  final String itemId;
  final String itemPrice;
  final String itemWeight;


  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
      [
        Sizes.s6.verticalSpace,
        GestureDetector(
          onTap: ()
          {
            AppLogger.debug('Trash...');
            ref.read(cartItemsProvider.notifier).removeItem(itemId);
          },
          child: const TrashImgWidget()
        ),
        const Spacer(),
        ItemPriceTextWidget(itemPrice: itemPrice, itemWeight: itemWeight, itemId: itemId,),
        Sizes.s8.verticalSpace,
      ],
    );
  }
}

