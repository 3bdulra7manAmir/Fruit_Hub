import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/popers/modal_bottom_sheet.dart';
import 'current_order_cart.dart';

class TimeLineCardWidget extends StatelessWidget
{
  const TimeLineCardWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children:
      [
        Positioned(
          top: 65.h, left: 0, right: 50.w,
          child: CustomModalSheetDragger(height: 1.h, color: AppColors.color.kGrey021,),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Column(
              children:
              [
                OrderIconWidget(),
                CustomModalSheetDragger(width: 2.w, height: 40.h, color: AppColors.color.kGrey020,),
              ],
            ),
            Sizes.s24.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text( "تتبع الطلب", style: AppStyles.extraLight(
                  fontWeight: AppFontWeights.boldWeight,
                  fontColor: AppColors.color.kBlack004,),
                ),
                Text("22 مارس , 2024", style: AppStyles.extraLight(
                  fontColor: AppColors.color.kGrey002,),
                ),
              ],
            ).marginOnly(top: 10.h),
          ],
        ),
      ],
    );
  }
}
