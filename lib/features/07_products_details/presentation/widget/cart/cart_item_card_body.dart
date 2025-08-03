import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/padding.dart';
import 'cart_item_img.dart';
import 'cart_item_price.dart';
import 'cart_item_quantity.dart';

class CartCardWidget extends StatelessWidget
{
  const CartCardWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: Border.all(color: AppColors.color.kGrey014),
      //color: ,
      child: Row(
        children:
        [
          GestureDetector(
            onTap: ()
            {
              log('Item Details...');
              AppRouter.router.pushNamed(AppRoutes.itemsDetails);
            },
            child: const CartItemImgWidget()
          ),
          Sizes.s16.horizontalSpace,
          const CartItemQuantityWidget(),
          const Spacer(),
          const CartItemPriceWidget(),
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 5.h),
    );
  }
}

