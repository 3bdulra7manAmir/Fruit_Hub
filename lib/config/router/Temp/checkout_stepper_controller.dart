// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'checkout_stepper_controller.g.dart';

// @riverpod
// class CheckoutStepperController extends _$CheckoutStepperController with ChangeNotifier {
//   int _currentStep = 0;
//   int get currentStep => _currentStep;

//   late StatefulNavigationShell _navigationShell;

//   @override
//   CheckoutStepperController build() {
//     // No dependencies to watch at initialization
//     return this;
//   }

//   void init(StatefulNavigationShell shell) {
//     _navigationShell = shell;
//   }

//   void goToStep(int index) {
//     _currentStep = index;
//     _navigationShell.goBranch(index, initialLocation: index == _navigationShell.currentIndex);
//     notifyListeners();
//   }

//   void nextStep() {
//     if (_currentStep < 3) {
//       goToStep(_currentStep + 1);
//     }
//   }

//   void previousStep() {
//     if (_currentStep > 0) {
//       goToStep(_currentStep - 1);
//     }
//   }
// }
