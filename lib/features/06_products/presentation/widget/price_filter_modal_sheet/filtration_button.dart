import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../sort_modal_sheet/sort_body.dart';

class PriceFiltrationButtonWidget extends StatelessWidget
{
  const PriceFiltrationButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: S.current.clearance,
      onPressed: ()
      {
        log('Filter...');
        AppRouter.router.pop();
        arrangementFilterSheet(context);
      },
    );
  }
}