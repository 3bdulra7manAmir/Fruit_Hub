import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';

class PersonalInfoTextWidget extends StatelessWidget
{
  const PersonalInfoTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.personalInfo, style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),);
  }
}