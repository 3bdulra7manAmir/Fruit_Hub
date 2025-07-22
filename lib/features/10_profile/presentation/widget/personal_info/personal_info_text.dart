import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';

class PersonalInfoTextWidget extends StatelessWidget
{
  const PersonalInfoTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text("المعلومات الشخصيه", style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),);
  }
}