import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/checkout_ship_view/payment_option_cards_list.dart';
import '../widget/nav_buttons.dart';
import '../widget/payment_steps_list.dart';

final List<String> titles = ['الشحن', 'العنوان', 'الدفع', 'المراجعة'];


class CheckoutShip extends StatefulWidget
{
  const CheckoutShip({super.key});

  @override
  State<CheckoutShip> createState() => _CheckoutShipState();
}

class _CheckoutShipState extends State<CheckoutShip>
{
  int currentStep = 0;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: titles[currentStep]),
      body: CustomColumn(
        children:
        [
          Sizes.s16.verticalSpace,
          SizedBox(height: 24.h,
            child: PaymentStepsListWidget(currentStep: currentStep),
          ),
          Sizes.s32.verticalSpace,
          PaymentOptionCardsList(),
          CheckOutNavButtons(
            currentStep: currentStep,
            totalSteps: titles.length,
            onBack: () => setState(() => currentStep--),
            onNext: () => setState(() => currentStep++),
          ),
        ],
      ),
    );
  }
}

