import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/column.dart';
import '../widget/cart/cart_items_list.dart';
import '../widget/cart/cart_pay_button.dart';
import '../widget/cart/cart_title.dart';

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
          Sizes.s16.verticalSpace,
          const CartPayButtonWidget(),
          Sizes.s16.verticalSpace,
        ],
    );
  }
}








