import 'package:flutter/material.dart';

import '../../../../../../config/i18n/generated/l10n.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/services/database/firebase/firebase_services/firebase_auth.dart';

class UserNameWidget extends StatelessWidget
{
  const UserNameWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text(S.current.goodMorning, style: AppStyles.bold(
          fontWeight: AppFontWeights.regularWeight,
          fontColor: AppColors.color.kGrey002),
        ),
        Text(FirebaseAuthService.instance.auth.currentUser?.displayName ?? 'User added before name adding', 
        style: AppStyles.bold(fontColor: AppColors.color.kBlack001)
      ),
      ],
    );
  }
}