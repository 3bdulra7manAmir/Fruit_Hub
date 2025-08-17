import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/padding.dart';
import 'cart_fruit_img.dart';
import 'cart_item_price.dart';
import 'cart_item_quantity.dart';

class CartCardWidget extends StatelessWidget
{
  const CartCardWidget({super.key,  
  required this.itemImg, 
  required this.itemName, 
  required this.itemWeight, 
  required this.itemId, 
  required this.itemPrice});

  final String itemImg;
  final String itemName;
  final String itemWeight;
  final String itemId;
  final String itemPrice;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: Border.all(color: AppColors.color.kGrey014),
      color: AppColors.color.kWhite005,
      child: Row(
        children:
        [
          GestureDetector(
            onTap: ()
            {
              log('Item Details...');
              AppRouter.router.pushNamed(AppRoutes.itemsDetails);
            },
            child: CartItemImgWidget(itemImg: itemImg,)
          ),
          Sizes.s16.horizontalSpace,
          CartItemQuantityWidget(itemName: itemName, itemWeight: itemWeight, itemId: itemId,),
          const Spacer(),
          CartItemPriceWidget(itemId: itemId, itemPrice: itemPrice, itemWeight: itemWeight,),
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 5.h),
    );
  }
}

