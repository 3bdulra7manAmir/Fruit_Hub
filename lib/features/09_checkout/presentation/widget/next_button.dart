// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../config/router/route_observer.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/buttons/button.dart';
import '../../../../core/widgets/snackbar.dart';
import '../controller/checkout_stepper_controller.dart';
import 'next_button_functions.dart';

class CheckOutNavButtonsWidget extends ConsumerWidget
{
  const CheckOutNavButtonsWidget({super.key, this.formKey});

  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final controller = ref.watch(checkoutStepperControllerProvider);
    return CustomButton(
      text: controller.currentStep < 3 ? S.current.next : S.current.complete,
      onPressed: () {
        if (RouteTracker.currentRoute == AppRoutes.checkoutAddress) {
          NextButtonOps(ref).addressButtonValidation(formKey, context);
        }
        else if(RouteTracker.currentRoute == AppRoutes.checkoutPayment)
        {
          NextButtonOps(ref).paymentCardButtonValidation(formKey, context);
        }
        else
        {
          controller.onNextPressed(context);
        }
      },
    );
  }
}

