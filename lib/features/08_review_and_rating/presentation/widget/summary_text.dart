
import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/widget_align.dart';

class SummaryTextWidget extends StatelessWidget
{
  const SummaryTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('الملخص', style: AppStyles.bold(
      fontColor: AppColors.color.kBlack001, 
      fontWeight: AppFontWeights.semiBoldWeight),
    ).align(Alignment.center);
  }
}