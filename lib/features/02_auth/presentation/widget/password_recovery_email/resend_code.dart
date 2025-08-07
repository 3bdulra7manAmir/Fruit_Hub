import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class ResendCodeWidget extends StatelessWidget
{
  const ResendCodeWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text(
      S.current.resendCode,
      style: AppStyles.bold(fontColor: AppColors.color.kGreen004, fontWeight: AppFontWeights.semiBoldWeight),
    );
  }
}