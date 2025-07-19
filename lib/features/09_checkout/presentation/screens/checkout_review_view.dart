import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/checkout_review/confirm_address.dart';
import '../widget/checkout_review/confirm_order_text.dart';
import '../widget/checkout_review/confirm_payment.dart';
import '../widget/checkout_review/order_summary.dart';
import '../widget/checkout_review/order_total.dart';
import '../widget/nav_buttons.dart';
import '../widget/payment_steps_list.dart';
import 'checkout_ship_view.dart';

class CheckoutReview extends StatefulWidget
{
  const CheckoutReview({super.key});

  @override
  State<CheckoutReview> createState() => _CheckoutReviewState();
}
class _CheckoutReviewState extends State<CheckoutReview>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: titles[currentStep]),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          SizedBox(height: 24.h,
            child: PaymentStepsListWidget(currentStep: currentStep),
          ),
          Sizes.s24.verticalSpace,
          OrderSummaryTextWidget(),
          Sizes.s8.verticalSpace,
          OrderSummaryWidget(),
          Sizes.s16.verticalSpace,
          ConfirmOrderTextWidget(),
          Sizes.s8.verticalSpace,
          ConfirmPaymentMethodWidget(),
          Sizes.s8.verticalSpace,
          ConfirmAddressWidget(),
          Sizes.s51.verticalSpace,
          CheckOutNavButtonsWidget(
            currentStep: currentStep,
            totalSteps: titles.length,
            onBack: () => setState(() => currentStep--),
            onNext: () => setState(() => currentStep++),
          ),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}