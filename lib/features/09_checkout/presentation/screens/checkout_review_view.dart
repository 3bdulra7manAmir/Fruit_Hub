import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_routes.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../controller/checkout_stepper_controller.dart';
import '../widget/checkout_review/confirm_address.dart';
import '../widget/checkout_review/confirm_order_text.dart';
import '../widget/checkout_review/confirm_payment.dart';
import '../widget/checkout_review/order_summary.dart';
import '../widget/checkout_review/order_total.dart';
import '../widget/nav_buttons.dart';
import '../widget/payment_steps_list.dart';

class CheckoutReview extends ConsumerWidget
{
  const CheckoutReview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    ref.read(checkoutStepperControllerProvider.notifier).updateStepFromRoute(AppRoutes.checkoutReview);
    return Scaffold(
      appBar: const CustomAppBar(title: 'المراجعة'),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          SizedBox(height: 24.h, child: const PaymentStepsListWidget(),),
          Sizes.s24.verticalSpace,
          const OrderSummaryTextWidget(),
          Sizes.s8.verticalSpace,
          const OrderSummaryWidget(),
          Sizes.s16.verticalSpace,
          const ConfirmOrderTextWidget(),
          Sizes.s8.verticalSpace,
          const ConfirmPaymentMethodWidget(),
          Sizes.s8.verticalSpace,
          const ConfirmAddressWidget(),
          Sizes.s51.verticalSpace,
          const CheckOutNavButtonsWidget(),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}