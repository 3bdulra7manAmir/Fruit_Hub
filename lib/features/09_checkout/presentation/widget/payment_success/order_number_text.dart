import 'package:flutter/material.dart';

import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class OrderNumberTextWidget extends StatelessWidget
{
  const OrderNumberTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text('رقم الطلب : 1245789663#', style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight),);
  }
}