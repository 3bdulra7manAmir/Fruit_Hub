import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/services/database/firebase/firebase_auth.dart';

class PhoneRecoveryTitleWidget extends StatelessWidget
{
  const PhoneRecoveryTitleWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Text(
      S.current.enterCodeSentToEmail('${AuthService.instance.auth.currentUser?.email}'),
      style: AppStyles.bold(
        fontColor: AppColors.color.kGrey006, 
        fontWeight: AppFontWeights.semiBoldWeight
      ), maxLines: 2,
    );
  }
}