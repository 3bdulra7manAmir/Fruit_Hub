import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/buttons/button.dart';

class CheckOutNavButtons extends StatelessWidget
{
  final int currentStep;
  final int totalSteps;
  final VoidCallback onNext;
  final VoidCallback onBack;

  const CheckOutNavButtons({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.onNext,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Expanded(
          child: CustomButton(text: "رجوع", onPressed: currentStep > 0
            ? onBack : () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('انت أساسًا في أول واحدة يا معلم...')),
            ),
          ),
        ),
        Sizes.s16.horizontalSpace,
        Expanded(
          child: CustomButton(text: "التالي", onPressed: currentStep < totalSteps - 1
            ? onNext : () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("تم إكمال الخطوات!")),
            ),
          ),
        ),
      ],
    );
  }
}
