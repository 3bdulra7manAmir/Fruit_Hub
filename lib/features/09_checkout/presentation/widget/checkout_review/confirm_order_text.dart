import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class ConfirmOrderTextWidget extends StatelessWidget
{
  const ConfirmOrderTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text('يرجي تأكيد  طلبك', style: AppStyles.extraLight(
      fontColor: AppColors.color.kBlack001, 
      fontWeight: AppFontWeights.boldWeight),
    );
  }
}