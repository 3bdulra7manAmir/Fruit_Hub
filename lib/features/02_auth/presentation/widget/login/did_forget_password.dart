import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/align.dart';
import '../../../../../core/utils/logger/app_logger.dart';

class DidForgetPasswordWidget extends StatelessWidget
{
  const DidForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {
        AppLogger.debug('Forget Password? Pressed');
        AppRouter.router.pushNamed(AppRoutes.forgetPasswordPhone);
      },
      child: Text(
        S.current.didForgotPassword, 
        style: AppStyles.extraLight(fontColor: AppColors.color.kGreen004)
      ).align(Alignment.centerLeft),
    );
  }
}