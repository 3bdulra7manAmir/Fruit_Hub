import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class OrderDateTextWidget extends StatelessWidget
{
  const OrderDateTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('تم الطلب :22 مارس ,2024', style: AppStyles.light(
      fontWeight: AppFontWeights.regularWeight,
      fontColor: AppColors.color.kGrey002,),
    );
  }
}