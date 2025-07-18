import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/checkout_address/address_textfield.dart';
import '../widget/checkout_address/appartment_textfield.dart';
import '../widget/checkout_address/city_textfield.dart';
import '../widget/checkout_address/email_textfield.dart';
import '../widget/checkout_address/fullname_textfield.dart';
import '../widget/checkout_address/save_address.dart';
import '../widget/nav_buttons.dart';
import '../widget/payment_steps_list.dart';
import 'checkout_ship_view.dart';

class CheckoutAddress extends StatefulWidget
{
  const CheckoutAddress({super.key});

  @override
  State<CheckoutAddress> createState() => _CheckoutAddressState();
}
class _CheckoutAddressState extends State<CheckoutAddress>
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
          CheckOutFullNameWidget(),
          Sizes.s8.verticalSpace,
          CheckOutEmailWidget(),
          Sizes.s8.verticalSpace,
          CheckOutAddressWidget(),
          Sizes.s8.verticalSpace,
          CheckOutCityWidget(),
          Sizes.s8.verticalSpace,
          AppartmentFieldWidget(),
          Sizes.s16.verticalSpace,
          SaveAddressWidget(),
          Sizes.s64.verticalSpace,
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