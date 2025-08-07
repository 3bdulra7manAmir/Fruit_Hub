import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/router/route_observer.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/widgets/buttons/icon_button.dart';

class AddNewPaymentMethodButtonWidget extends StatelessWidget
{
  const AddNewPaymentMethodButtonWidget({super.key, required this.formKey, this.cardNumberController, this.expireDateController});

  final GlobalKey<FormState> formKey;
  final TextEditingController? cardNumberController;
  final TextEditingController? expireDateController;

  @override
  Widget build(BuildContext context)
  {
    return CustomIconButton(
      onPressed: ()
      {
        if (!formKey.currentState!.validate())
        {
          log('InValid...');
        }
        else if(RouteTracker.currentRoute == AppRoutes.addNewPaymentCard)
        {
          AppRouter.router.pop();
        }
        else
        {
          log('Add new Payment Method has been Pressed');
          AppRouter.router.pushNamed(AppRoutes.addNewPaymentCard);
        }
      },
      text: S.current.addPaymentMethod,
      
      icon: SvgPicture.asset(AppAssets.icons.addWhiteV2),
    );
  }
}


