import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/checkout_review/confirm_address.dart';
import '../widget/checkout_review/confirm_order_text.dart';
import '../widget/checkout_review/confirm_payment.dart';
import '../widget/checkout_review/order_summary.dart';
import '../widget/checkout_review/order_total.dart';
import '../widget/next_button.dart';
import '../widget/payment_steps_list.dart';

class CheckoutReview extends ConsumerStatefulWidget {
  const CheckoutReview({super.key});

  @override
  ConsumerState<CheckoutReview> createState() => _CheckoutReviewState();
}

class _CheckoutReviewState extends ConsumerState<CheckoutReview> with RouteAware
{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.review, isCartBackButton: true),
      body: CustomSingleChild(
        children: [
          Sizes.s16.verticalSpace,
          SizedBox(height: 24.h, child: const PaymentStepsListWidget()),
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
        ],
      ),
    );
  }
}
