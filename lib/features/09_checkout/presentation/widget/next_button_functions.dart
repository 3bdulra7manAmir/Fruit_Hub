import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/logger/app_logger.dart';
import '../controller/checkout_stepper_controller.dart';

class NextButtonOps
{
  NextButtonOps(this.ref);
  final WidgetRef ref;

  void addressButtonValidation(GlobalKey<FormState>? formKey, BuildContext context) {
    final controller = ref.read(checkoutStepperControllerProvider.notifier);

    if (formKey == null || formKey.currentState?.validate() == true) {
      AppLogger.debug('Valid or No Form address');
      controller.onNextPressed(context);
    } else {
      AppLogger.debug('Invalid Info');
      //controller.onNextPressed(context);
    }
  }

  void paymentCardButtonValidation(GlobalKey<FormState>? formKey, BuildContext context) {
    final controller = ref.read(checkoutStepperControllerProvider.notifier);

    if (formKey == null || formKey.currentState?.validate() == true) {
      AppLogger.debug('Valid or No Form payment');
      controller.onNextPressed(context);
    } else {
      AppLogger.debug('Invalid Info');
      //controller.onNextPressed(context);
    }
  }
}
