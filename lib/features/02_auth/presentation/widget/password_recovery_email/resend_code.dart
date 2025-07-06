import 'package:e_commerce_app/config/theme/color_manager/colors.dart';
import 'package:e_commerce_app/config/theme/font_manager/font_weights.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_styles.dart';

class ResendCodeWidget extends StatelessWidget
{
  const ResendCodeWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text(
      "إعادة إرسال الرمز",
      style: AppStyles.bold(fontColor: AppColors.color.kGreen004, fontWeight: AppFontWeights.semiBoldWeight),
    );
  }
}