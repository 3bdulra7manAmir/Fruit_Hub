import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class PleaseChooseSuitablePaymentTextWidget extends StatelessWidget
{
  const PleaseChooseSuitablePaymentTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text("من فضلك اختر طريقه الدفع المناسبه لك.", style: AppStyles.extraLight(
      fontWeight: AppFontWeights.regularWeight, 
      fontColor: AppColors.color.kGrey006),
    );
  }
}