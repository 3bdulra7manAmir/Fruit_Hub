import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/checkout_stepper_controller.dart';

class NextButtonOps
{
  NextButtonOps(this.ref);
  final WidgetRef ref;

  void addressButtonValidation(GlobalKey<FormState>? formKey, BuildContext context) {
    final controller = ref.read(checkoutStepperControllerProvider.notifier);

    if (formKey == null || formKey.currentState?.validate() == true) {
      log('Valid or No Form address');
      controller.onNextPressed(context);
    } else {
      log('Invalid Info');
      controller.onNextPressed(context);
    }
  }

  void paymentCardButtonValidation(GlobalKey<FormState>? formKey, BuildContext context) {
    final controller = ref.read(checkoutStepperControllerProvider.notifier);

    if (formKey == null || formKey.currentState?.validate() == true) {
      log('Valid or No Form payment');
      controller.onNextPressed(context);
    } else {
      log('Invalid Info');
      controller.onNextPressed(context);
    }
  }
}
