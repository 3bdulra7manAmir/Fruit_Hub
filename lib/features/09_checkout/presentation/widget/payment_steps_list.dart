import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import '../screens/checkout_ship_view.dart';
import 'payment_title_widget.dart';

class PaymentStepsListWidget extends StatelessWidget
{
  const PaymentStepsListWidget({super.key, required this.currentStep,});
  final int currentStep;

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      separatorBuilder: (context, index) => Sizes.s24.horizontalSpace,
      scrollDirection: Axis.horizontal,
      itemCount: titles.length,
      itemBuilder: (context, index)
      {
        final isCompleted = index < currentStep;
        final isActive = index == currentStep;
        return StepperTitleWidget(
          isCompleted: isCompleted,
          isActive: isActive,
          titles: titles,
          index: index,
        );
      },
    );
  }
}
