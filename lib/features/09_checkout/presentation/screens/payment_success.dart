import 'dart:developer';
import 'package:e_commerce_app/core/extensions/widget_align.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/nav_buttons.dart';
import '../widget/payment_success/done_successfully_text.dart';
import '../widget/payment_success/main_page_text.dart';
import '../widget/payment_success/order_number_text.dart';
import '../widget/payment_success/success_img.dart';
import 'checkout_ship_view.dart';

class PaymentSuccess extends StatefulWidget
{
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}
class _PaymentSuccessState extends State<PaymentSuccess>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "الدفع", isCustomBack: false,),
      body: CustomSingleChild(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          Sizes.s67.verticalSpace,
          SuccessImgWidget(),
          Sizes.s33.verticalSpace,
          DoneSuccessfullyTextWidget(),
          Sizes.s9.verticalSpace,
          OrderNumberTextWidget(),
          if (1.sw <= 360 && 1.sh <= 640)...
          [
            Sizes.s67.verticalSpace,
          ]
          else...
          [
            Sizes.s150.verticalSpace,
          ],
          CheckOutNavButtonsWidget(
            currentStep: currentStep,
            totalSteps: titles.length,
            onBack: () => setState(() => currentStep--),
            onNext: () => setState(() => currentStep++),
          ).align(Alignment.bottomCenter),
          Sizes.s16.verticalSpace,
          GestureDetector(
            onTap: ()
            {
              log("Route to the main Screen...");
              //AppRouter
            },
            child: MainPageTextWidget()
          ),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}