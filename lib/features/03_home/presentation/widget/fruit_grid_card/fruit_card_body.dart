import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import 'favourite_img.dart';
import 'fruit_price.dart';
import 'add_button.dart';
import 'watermelon_img.dart';

class FruitGridCardWidget extends StatelessWidget
{
  const FruitGridCardWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: AppRadiuses.circular.xXXXSmall,
      child: Card(
        color: AppColors.color.kGrey008,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.s8.verticalSpace,
            const FavouriteWidget(),
            const Expanded(child: WatermelonWidget(),),
            Sizes.s12.verticalSpace,
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Expanded(child: PriceWidget()),
                AddButtonWidget(),
              ],
            ),
            Sizes.s20.verticalSpace,
          ],
        ).marginSymmetric(horizontal: 8.w),
      ),
    );
  }
}



