import 'package:flutter/material.dart';

import '../../../../core/widgets/buttons/button.dart';
import '../../../../core/widgets/snackbar.dart';

class CheckOutNavButtonsWidget extends StatelessWidget
{
  final int currentStep;
  final int totalSteps;
  final VoidCallback onNext;
  final VoidCallback onBack;

  const CheckOutNavButtonsWidget({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.onNext,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(text: "التالي", onPressed: currentStep < totalSteps - 1
      ? onNext : () => CustomSnackBar.show(context, "تم إكمال الخطوات!"),
    );
  }
}
