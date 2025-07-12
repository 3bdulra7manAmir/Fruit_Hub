import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';

class MarkAllAsReadWidget extends StatelessWidget
{
  const MarkAllAsReadWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () {log("Read All has been Pressed...");},
      child: Text("تحديد الكل مقروء", style: AppStyles.semiBold(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),)
    );
  }
}
