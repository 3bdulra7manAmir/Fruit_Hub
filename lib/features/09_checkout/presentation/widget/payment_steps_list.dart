import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import '../controller/checkout_stepper_controller.dart';
import 'payment_title_widget.dart';


class PaymentStepsListWidget extends ConsumerWidget
{
  const PaymentStepsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final controller = ref.watch(checkoutStepperControllerProvider);
    final currentStep = controller.currentStep;
    final List<String> titles = [S.current.shipping, S.current.address, S.current.pay, S.current.review];

    return CustomListviewBuilder(
      separatorBuilder: (_, index) => Sizes.s24.horizontalSpace,
      scrollDirection: Axis.horizontal,
      itemCount: titles.length,
      itemBuilder: (_, index) {
        final isCompleted = index < currentStep;
        final isActive = index == currentStep;
        return GestureDetector(
          onTap: () => controller.goToStep(index),
          child: StepperTitleWidget(
            isCompleted: isCompleted,
            isActive: isActive,
            titles: titles,
            index: index,
          ),
        );
      },
    );
  }
}
