import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class ForgetPasswordTitleWidget extends StatelessWidget
{
  const ForgetPasswordTitleWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text(
      'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.', 
      style: AppStyles.bold(
        fontWeight: AppFontWeights.semiBoldWeight, 
        fontColor: AppColors.color.kGrey006
      ), maxLines: 2,
    );
  }
}