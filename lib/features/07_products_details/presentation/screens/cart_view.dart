import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/column.dart';
import '../controllers/cart_item_controller.dart';
import '../widget/cart/cart_items_list.dart';
import '../widget/cart/cart_pay_button.dart';
import '../widget/cart/cart_title_text.dart';

class Cart extends StatelessWidget
{
  const Cart({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomSingleChild(
        isMargin: false,
        children:
        [
          Sizes.s16.verticalSpace,
          const CartTitleWidget(),
          Sizes.s24.verticalSpace,
          const CartItemsListWidget(),
          if (1.sw <= 427 && 1.sh <= 952)...
          [Sizes.s50.verticalSpace,]
          else...
          [Sizes.s43.horizontalSpace,],
          Consumer(
            builder: (context, ref, child)
            {
              final itemsList = ref.watch(cartItemsProvider);
              return itemsList.isEmpty ? const SizedBox.shrink() : const CartPayButtonWidget();
            },
          ),
          Sizes.s16.verticalSpace,
        ],
    );
  }
}








