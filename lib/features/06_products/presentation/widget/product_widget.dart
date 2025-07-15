import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

class FruitsProductsWidget extends StatelessWidget
{
  const FruitsProductsWidget ({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Container(
          width: 64.w, height: 64.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: AppRadiuses.circular.large,
            color: AppColors.color.kGrey008
          ),
          child: Image.asset(AppAssets.icons.avocado),
        ),
        Sizes.s2.verticalSpace,
        Text("افوكادو", style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),)
      ],
    );
  }
}