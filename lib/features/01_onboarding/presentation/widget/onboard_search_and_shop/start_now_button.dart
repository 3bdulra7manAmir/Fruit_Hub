import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/widgets/buttons/button.dart';

class StartNowButtonWidget extends StatelessWidget
{
  const StartNowButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(text: S.current.startNow, margin: AppMargins.symmetric.medium,
    onPressed: ()
    {
      log('Start Now');
      AppRouter.router.pushReplacement(AppRoutes.login);
    },);
  }
}