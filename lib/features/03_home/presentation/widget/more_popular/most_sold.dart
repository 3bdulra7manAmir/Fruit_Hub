import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';

class MostSoldWidgetExpaneded extends StatelessWidget
{
  const MostSoldWidgetExpaneded({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text("الأكثر مبيعًا", style: AppStyles.bold(fontColor: AppColors.color.kBlack001),);
  }
}