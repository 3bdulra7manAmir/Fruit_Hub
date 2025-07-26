import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/buttons/button.dart';
import '../../../../core/widgets/snackbar.dart';
import '../controller/checkout_stepper_controller.dart';

class CheckOutNavButtonsWidget extends ConsumerWidget
{
  const CheckOutNavButtonsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final controller = ref.watch(checkoutStepperControllerProvider);
    return Row(
      children:
      [
        if (controller.currentStep > 0)
          Expanded(child: CustomButton(text: 'السابق', onPressed: controller.previousStep,),),
        Sizes.s16.horizontalSpace,
        Expanded(
          child: CustomButton(
            text: controller.currentStep < 3 ? 'التالي' : 'إكمال',
            onPressed: controller.currentStep < 3
            ? controller.nextStep : () => CustomSnackBar.show(context, 'تم إكمال الخطوات!'),
          ),
        ),
      ],
    );
  }
}
