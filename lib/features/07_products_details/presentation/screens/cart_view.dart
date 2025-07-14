import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../widget/cart/cart_item_card_body.dart';
import '../widget/cart/cart_title.dart';

class Cart extends StatelessWidget
{
  const Cart({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "السلة",),
      body: Column(
        children:
        [
          Sizes.s16.verticalSpace,
          const CartTitleWidget(),
          Sizes.s24.verticalSpace,
          SizedBox(height: 92.h, child: const CartCardWidget()),
        ],
      ),
    );
  }
}








