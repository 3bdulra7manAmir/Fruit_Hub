import 'package:e_commerce_app/core/extensions/widget_align.dart';
import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';

class DidForgetPasswordWidget extends StatelessWidget
{
  const DidForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text(
      "نسيت كلمة المرور؟", 
      style: AppStyles.semiBold(fontColor: AppColors.color.kGreen004)
    ).align(Alignment.centerLeft);
  }
}