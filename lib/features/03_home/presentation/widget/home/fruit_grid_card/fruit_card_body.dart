import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import 'favourite.dart';
import 'fruit_price.dart';
import 'add_button.dart';
import 'watermelon.dart';

class FruitGridCardWidget extends StatelessWidget
{
  const FruitGridCardWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: AppRadiuses.circular.xSmall,
      child: Card(
        color: AppColors.color.kGrey008,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size8.verticalSpace,
            const FavouriteWidget(),
            Expanded(child: const WatermelonWidget(),),
            Sizes.size12.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Expanded(child: PriceWidget()),
                const AddButtonWidget(),
              ],
            ),
            Sizes.size20.verticalSpace,
          ],
        ).marginSymmetric(horizontal: 8.w),
      ),
    );
  }
}



