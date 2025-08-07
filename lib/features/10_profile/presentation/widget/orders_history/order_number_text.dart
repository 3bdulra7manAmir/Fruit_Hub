import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class OrderNumberTextWidget extends StatelessWidget
{
  const OrderNumberTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('طلب رقم: 1234567#', style: AppStyles.extraLight(
      fontWeight: AppFontWeights.boldWeight,
      fontColor: AppColors.color.kBlack004,),
    );
  }
}

