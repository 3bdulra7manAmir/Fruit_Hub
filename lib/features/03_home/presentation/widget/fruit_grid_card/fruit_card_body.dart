import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/margin.dart';
import 'add_button.dart';
import 'favourite_img.dart';
import 'fruit_price.dart';
import 'watermelon_img.dart';

class FruitGridCardWidget extends StatelessWidget
{
  const FruitGridCardWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kGrey008,
      shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXXXSmall,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Sizes.s8.verticalSpace,
          const FavouriteWidget(),
          const Expanded(child: WatermelonWidget(),),
          Sizes.s12.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              const Expanded(child: FruitGridPriceWidget()),
              GestureDetector(
                onTap: () {log('Add has been Pressed...');},
                child: const FruitAddButtonWidget()
              ),
            ],
          ),
          Sizes.s20.verticalSpace,
        ],
      ).marginSymmetric(horizontal: 8.w),
    );
  }
}



