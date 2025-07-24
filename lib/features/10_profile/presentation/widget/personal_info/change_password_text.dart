import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';

class ChangePasswordTextWidget extends StatelessWidget
{
  const ChangePasswordTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('تغيير كلمة المرور', style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),);
  }
}