import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/widgets/buttons/button.dart';

class CartPayButtonWidget extends StatelessWidget
{
  const CartPayButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      margin: AppMargins.symmetric.medium,
      text: 'الدفع  120جنيه',
      onPressed: () {log('Pay has been Pressed...'); AppRouter.router.pushNamed(AppRoutes.checkoutShip,);},
    );
  }
}