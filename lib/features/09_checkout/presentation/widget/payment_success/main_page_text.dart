import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';

class MainPageTextWidget extends StatelessWidget
{
  const MainPageTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text('الرئيسية', style: AppStyles.bold(
      fontColor: AppColors.color.kGreen001, 
      textDecoration: TextDecoration.underline,
      textDecorationColor: AppColors.color.kGreen001),
    );
  }
}