import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/custom_divider.dart';

class OrWidget extends StatelessWidget
{
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Expanded(child: CustomDivider(color: AppColors.color.kGrey005,),),
        Sizes.size18.horizontalSpace,
        Text("أو", style: AppStyles.bold(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kBlack001),),
        Sizes.size18.horizontalSpace,
        Expanded(child: CustomDivider(color: AppColors.color.kGrey005,),),
      ],
    );
  }
}