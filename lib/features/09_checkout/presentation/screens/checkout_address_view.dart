import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../controller/checkout_stepper_controller.dart';
import '../widget/checkout_address/address_textfield.dart';
import '../widget/checkout_address/appartment_textfield.dart';
import '../widget/checkout_address/city_textfield.dart';
import '../widget/checkout_address/email_textfield.dart';
import '../widget/checkout_address/fullname_textfield.dart';
import '../widget/checkout_address/save_address.dart';
import '../widget/next_button.dart';
import '../widget/payment_steps_list.dart';

class CheckoutAddress extends ConsumerStatefulWidget
{
  const CheckoutAddress({super.key});

  @override
  ConsumerState<CheckoutAddress> createState() => _CheckoutAddressState();
}

class _CheckoutAddressState extends ConsumerState<CheckoutAddress>
{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_)
    {
      ref.read(checkoutStepperControllerProvider.notifier).goToStep(1);
    });
  }

  final TextEditingController addressController = TextEditingController();
  final TextEditingController apartmentController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final GlobalKey<FormState> addressFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.address, isCartBackButton: true,),
      body: CustomForm(
        formKey: addressFormKey,
        formBody: CustomSingleChild(
          children:
          [
            Sizes.s16.verticalSpace,
            SizedBox(height: 24.h, child: const PaymentStepsListWidget(),),
            Sizes.s24.verticalSpace,
            CheckOutFullNameWidget(fullNameController: fullNameController,),
            Sizes.s8.verticalSpace,
            CheckOutEmailWidget(emailController: emailController,),
            Sizes.s8.verticalSpace,
            CheckOutAddressWidget(addressController: addressController,),
            Sizes.s8.verticalSpace,
            CheckOutCityWidget(cityController: cityController,),
            Sizes.s8.verticalSpace,
            AppartmentFieldWidget(apartmentController: apartmentController,),
            Sizes.s16.verticalSpace,
            const SaveAddressWidget(),
            Sizes.s64.verticalSpace,
            CheckOutNavButtonsWidget(formKey: addressFormKey,),
            Sizes.s16.verticalSpace,
          ]
        ),
      ),
    );
  }
}