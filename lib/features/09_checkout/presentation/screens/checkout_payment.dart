import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/checkout_payment/card_auth_info.dart';
import '../widget/checkout_payment/card_number_textfield.dart';
import '../widget/checkout_payment/card_owner_textfield.dart';
import '../widget/checkout_payment/choose_suitable_payment.dart';
import '../widget/checkout_payment/default_card.dart';
import '../widget/checkout_payment/payment_methods_list.dart';
import '../widget/checkout_payment/please_choose_payment.dart';
import '../widget/nav_buttons.dart';
import '../widget/payment_steps_list.dart';
import 'checkout_ship_view.dart';

class CheckoutPayment extends StatefulWidget
{
  const CheckoutPayment({super.key});

  @override
  State<CheckoutPayment> createState() => _CheckoutPaymentState();
}
class _CheckoutPaymentState extends State<CheckoutPayment>
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
          ChooseSuitablePaymentTextWidget(),
          Sizes.s13.verticalSpace,
          PleaseChooseSuitablePaymentTextWidget(),
          Sizes.s13.verticalSpace,
          SizedBox(height: 43.h, child: PaymentMethodsListWidget()),
          Sizes.s16.verticalSpace,
          CardOwnerNameWidget(),
          Sizes.s8.verticalSpace,
          CardNumberWidget(),
          Sizes.s8.verticalSpace,
          CardAuthInfoWidget(),
          Sizes.s18.verticalSpace,
          MakeCardAsDeafultWidget(),
          Sizes.s60.verticalSpace,
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