import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class PriceLimitsWidget extends StatelessWidget
{
  const PriceLimitsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Expanded(
          child: Container(
            height: 36.h, alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: AppRadiuses.circular.xXSmall,
              border: Border.all(color: AppColors.color.kGrey010),
            ),
            child: const Text("0"),
          ),
        ),
        Sizes.s14.horizontalSpace,
        Text("الي", style: AppStyles.extraLight(
          fontColor: AppColors.color.kBlack001, 
          fontWeight: AppFontWeights.boldWeight),
        ),
        Sizes.s14.horizontalSpace,
        Expanded(
          child: Container(
            height: 36.h, alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: AppRadiuses.circular.xXSmall,
              border: Border.all(color: AppColors.color.kGrey010),
            ),
            child: const Text("0"),
          ),
        ),
      ]
    );
  }
}