import 'package:flutter/material.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_styles.dart';

class NotificationsTextWidget extends StatelessWidget
{
  const NotificationsTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return RichText(
      text: TextSpan(
        style: AppStyles.extraLight(fontColor: AppColors.color.kGrey009),
        children:
        [
          TextSpan(text: S.current.discount),
          TextSpan(text: '50% ', style: AppStyles.extraLight(fontColor: AppColors.color.kRed001),),
          TextSpan(text: S.current.fruitDiscount),
        ],
      ), maxLines: 2
    );
  }
}