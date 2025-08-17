import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';
import '../../../../../core/widgets/buttons/button.dart';
import '../../controllers/cart_item_controller.dart';

class CartPayButtonWidget extends ConsumerWidget
{
  const CartPayButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final total = ref.read(cartItemsProvider.notifier).totalPrice();
    ref.watch(cartItemsProvider);
    final finalPrice = '${S.current.pay} ' '${total.toCleanString().localizedNumbers(ref)} ' '${S.current.le}';
    return CustomButton(
      margin: AppMargins.symmetric.medium, text: finalPrice,
      onPressed: () {log('Pay has been Pressed...'); AppRouter.router.goNamed(AppRoutes.checkoutShip,);},
    );
  }
}