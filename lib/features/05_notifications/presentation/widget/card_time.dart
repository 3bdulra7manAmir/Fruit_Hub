import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';

class NotificationsTimeWidget extends StatelessWidget
{
  const NotificationsTimeWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text("9 صباحا", style: AppStyles.extraLight(
      fontWeight: AppFontWeights.regularWeight, 
      fontColor: AppColors.color.kGrey002),
    );
  }
}