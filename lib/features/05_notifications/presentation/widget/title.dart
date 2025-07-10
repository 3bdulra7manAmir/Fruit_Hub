import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

class NotificationsListTitleWidget extends StatelessWidget
{
  const NotificationsListTitleWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text("جديد", style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        Sizes.s6.horizontalSpace,
        Container(
          width: 22.w, height: 22.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.color.kGreen006,
            borderRadius: AppRadiuses.circular.large,
          ),
          child: Text("2", style: AppStyles.semiBold(
            fontWeight: AppFontWeights.boldWeight, 
            fontColor: AppColors.color.kGreen001),
          ),
        ),
        Spacer(),
        Text("تحديد الكل مقروء", style: AppStyles.semiBold(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),),
      ],
    );
  }
}