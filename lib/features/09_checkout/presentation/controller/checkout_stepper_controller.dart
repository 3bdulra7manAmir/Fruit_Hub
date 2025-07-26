import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';

part 'checkout_stepper_controller.g.dart';

@riverpod
class CheckoutStepperController extends _$CheckoutStepperController with ChangeNotifier
{
  int _currentStep = 0;
  int get currentStep => _currentStep;

  final Map<String, int> _stepRoutes =
  {
    AppRoutes.checkoutShip: 0,
    AppRoutes.checkoutAddress: 1,
    AppRoutes.checkoutPayment: 2,
    AppRoutes.checkoutReview: 3,
  };

  @override
  CheckoutStepperController build()
  {
    return this;
  }

  void updateStepFromRoute(String location)
  {
    final stepIndex = _stepRoutes[location];
    if (stepIndex != null && _currentStep != stepIndex)
    {
      _currentStep = stepIndex;
      notifyListeners();
    }
  }

  void goToStep(int index)
  {
    final routeName = _stepRoutes.entries.firstWhere((e) => e.value == index).key;
    _currentStep = index;
    notifyListeners();
    AppRouter.router.pushNamed(routeName);
  }

  void nextStep()
  {
    if (_currentStep < 3)
    {
      goToStep(_currentStep + 1);
    }
  }

  void previousStep()
  {
    if (_currentStep > 0)
    {
      goToStep(_currentStep - 1);
    }
  }
}
