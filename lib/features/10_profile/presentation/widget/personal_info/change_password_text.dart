import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';

class ChangePasswordTextWidget extends StatelessWidget
{
  const ChangePasswordTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.changePassword, style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),);
  }
}