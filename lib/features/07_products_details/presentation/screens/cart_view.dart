import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../widget/cart/cart_items_list.dart';
import '../widget/cart/cart_pay_button.dart';
import '../widget/cart/cart_title.dart';

class Cart extends StatelessWidget
{
  const Cart({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "السلة",),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children:
          [
            Sizes.s16.verticalSpace,
            const CartTitleWidget(),
            Sizes.s24.verticalSpace,
            //SizedBox(height: 92.h, child: const CartCardWidget()),
            const CartItemsListWidget(),
            Sizes.s16.verticalSpace,
            const CartPayButtonWidget(),
            Sizes.s16.verticalSpace,
          ],
        ),
      ),
    );
  }
}








