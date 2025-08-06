import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/checkout_ship/payment_option_cards_list.dart';
import '../widget/next_button.dart';
import '../widget/payment_steps_list.dart';


class CheckoutShip extends ConsumerStatefulWidget
{
  const CheckoutShip({super.key});

  @override
  ConsumerState<CheckoutShip> createState() => _CheckoutShipState();
}

class _CheckoutShipState extends ConsumerState<CheckoutShip> with RouteAware
{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.shipping, isCartBackButton: true),
      body: CustomSingleChild(
        children: [
          Sizes.s16.verticalSpace,
          SizedBox(height: 24.h, child: const PaymentStepsListWidget()),
          Sizes.s32.verticalSpace,
          const PaymentOptionCardsList(),
          Sizes.s16.verticalSpace,
          const CheckOutNavButtonsWidget(),
          Sizes.s16.verticalSpace,
        ],
      ),
    );
  }
}

