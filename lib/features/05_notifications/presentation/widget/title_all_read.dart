import 'package:flutter/material.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';

class MarkAllAsReadWidget extends StatelessWidget
{
  const MarkAllAsReadWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(S.current.markAllRead, style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),);
  }
}
