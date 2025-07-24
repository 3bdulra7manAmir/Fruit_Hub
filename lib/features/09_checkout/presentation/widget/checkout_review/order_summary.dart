import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class OrderSummaryTextWidget extends StatelessWidget
{
  const OrderSummaryTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text('ملخص الطلب :', style: AppStyles.extraLight(
      fontColor: AppColors.color.kBlack001, 
      fontWeight: AppFontWeights.boldWeight),
    );
  }
}