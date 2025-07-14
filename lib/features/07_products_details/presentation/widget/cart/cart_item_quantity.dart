import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../item_details/fruit_quantity.dart';

class CartItemQuantityWidget extends StatelessWidget
{
  const CartItemQuantityWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Sizes.s6.verticalSpace,
        Text("بطيخ", style: AppStyles.light(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack003),
        ),
        Sizes.s4.verticalSpace,
        Text("3 كم", style: AppStyles.light(
          fontWeight: AppFontWeights.regularWeight, 
          fontColor: AppColors.color.kOrange001),
        ),
        Sizes.s10.verticalSpace,
        FruitQuantityChanger(),
      ],
    );
  }
}

