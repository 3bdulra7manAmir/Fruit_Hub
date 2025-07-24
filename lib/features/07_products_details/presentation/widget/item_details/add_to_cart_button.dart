import 'dart:developer';
import 'package:flutter/widgets.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/widgets/buttons/button.dart';

class AddToCartButtonWidget extends StatelessWidget
{
  const AddToCartButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: 'أضف الي السلة',
      onPressed: ()
      {
        log('Add to Cart has been Pressed...');
        AppRouter.router.pushNamed(AppRoutes.cart);
      },
    );
  }
}