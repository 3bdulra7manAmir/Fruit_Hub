import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../controller/checkout_stepper_controller.dart';
import '../widget/checkout_address/address_textfield.dart';
import '../widget/checkout_address/appartment_textfield.dart';
import '../widget/checkout_address/city_textfield.dart';
import '../widget/checkout_address/email_textfield.dart';
import '../widget/checkout_address/fullname_textfield.dart';
import '../widget/checkout_address/save_address.dart';
import '../widget/nav_buttons.dart';
import '../widget/payment_steps_list.dart';

class CheckoutAddress extends ConsumerWidget
{
  const CheckoutAddress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    ref.read(checkoutStepperControllerProvider.notifier).updateStepFromRoute(AppRoutes.checkoutAddress);
    return Scaffold(
      appBar: CustomAppBar(title: S.current.address, isCartBackButton: true,),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          SizedBox(height: 24.h, child: const PaymentStepsListWidget(),),
          Sizes.s24.verticalSpace,
          const CheckOutFullNameWidget(),
          Sizes.s8.verticalSpace,
          const CheckOutEmailWidget(),
          Sizes.s8.verticalSpace,
          const CheckOutAddressWidget(),
          Sizes.s8.verticalSpace,
          const CheckOutCityWidget(),
          Sizes.s8.verticalSpace,
          const AppartmentFieldWidget(),
          Sizes.s16.verticalSpace,
          const SaveAddressWidget(),
          Sizes.s64.verticalSpace,
          const CheckOutNavButtonsWidget(),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}