import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/widgets/buttons/icon_button.dart';

class AddNewPaymentMethodButtonWidget extends StatelessWidget
{
  const AddNewPaymentMethodButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomIconButton(
      onPressed: ()
      {
        log('Add new Payment Method has been Pressed');
        AppRouter.router.pushNamed(AppRoutes.addNewPaymentCard);
      },
      text: 'أضف وسيلة دفع جديده',
      icon: SvgPicture.asset(AppAssets.icons.addWhiteV2),
    );
  }
}