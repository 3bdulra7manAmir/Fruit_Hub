import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/widgets/snackbar.dart';

part 'checkout_stepper_controller.g.dart';

@riverpod
class CheckoutStepperController extends _$CheckoutStepperController {
  int _currentStep = 0;
  int get currentStep => _currentStep;
  static const int maxStep = 3;

  List<String> stepRoutes = [
  AppRoutes.checkoutShip,
  AppRoutes.checkoutAddress,
  AppRoutes.checkoutPayment,
  AppRoutes.checkoutReview,
];

  @override
  CheckoutStepperController build() {
    return this;
  }

  void goToStep(int index) {
    if (index < 0 || index > maxStep) return;
    if (_currentStep == index) return;

    _currentStep = index;
    final route = stepRoutes[index];
    AppRouter.router.goNamed(route);
  }

  void nextStep() => goToStep(_currentStep + 1);
  void prevStep() => goToStep(_currentStep - 1);

  void onNextPressed(BuildContext context) {
  if (currentStep < 3)
  {
    nextStep();
  }
  else
  {
    CustomSnackBar().show(context, S.current.stepsCompleted);
    Future.delayed(const Duration(seconds: 2), ()
    {
      AppRouter.router.goNamed(AppRoutes.paymentSuccess);
    });
  }
}

}
