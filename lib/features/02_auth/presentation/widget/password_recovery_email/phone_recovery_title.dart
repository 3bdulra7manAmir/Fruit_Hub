import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class PhoneRecoveryTitleWidget extends StatelessWidget
{
  const PhoneRecoveryTitleWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text(
      "أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي Maxxx@email.com",
      style: AppStyles.bold(
        fontColor: AppColors.color.kGrey006, 
        fontWeight: AppFontWeights.semiBoldWeight
      ), maxLines: 2,
    );
  }
}