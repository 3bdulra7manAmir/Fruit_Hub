import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_styles.dart';

class CountWidget extends StatelessWidget
{
  const CountWidget({super.key, required this.count,});
  final String count;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 22.w, height: 22.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.color.kGreen006,
        borderRadius: AppRadiuses.circular.large,
      ),
      child: Text(count, style: AppStyles.light(
        fontWeight: AppFontWeights.boldWeight, 
        fontColor: AppColors.color.kGreen001),
      ),
    );
  }
}

