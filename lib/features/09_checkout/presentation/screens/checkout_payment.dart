import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
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

class CheckoutPayment extends ConsumerStatefulWidget {
  const CheckoutPayment({super.key});

  @override
  ConsumerState<CheckoutPayment> createState() => _CheckoutPaymentState();
}

class _CheckoutPaymentState extends ConsumerState<CheckoutPayment> with RouteAware
{
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expireDateController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.payment, isCartBackButton: true),
      body: CustomSingleChild(
        children: [
          Sizes.s16.verticalSpace,
          SizedBox(height: 24.h, child: const PaymentStepsListWidget()),
          Sizes.s24.verticalSpace,
          const ChooseSuitablePaymentTextWidget(),
          Sizes.s13.verticalSpace,
          const PleaseChooseSuitablePaymentTextWidget(),
          Sizes.s13.verticalSpace,
          SizedBox(height: 43.h, child: const PaymentMethodsListWidget()),
          Sizes.s16.verticalSpace,
          const CardOwnerNameWidget(),
          Sizes.s8.verticalSpace,
          CardNumberWidget(cardNumberController: cardNumberController),
          Sizes.s8.verticalSpace,
          CardAuthInfoWidget(expireDateController: expireDateController),
          Sizes.s18.verticalSpace,
          const MakeCardAsDeafultWidget(),
          Sizes.s60.verticalSpace,
          const CheckOutNavButtonsWidget(),
          Sizes.s16.verticalSpace,
        ],
      ),
    );
  }
}

