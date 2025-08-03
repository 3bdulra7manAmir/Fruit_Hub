import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/extensions/align.dart';
import '../../../../core/widgets/column.dart';
import '../widget/nav_buttons.dart';
import '../widget/payment_success/done_successfully_text.dart';
import '../widget/payment_success/main_page_text.dart';
import '../widget/payment_success/order_number_text.dart';
import '../widget/payment_success/success_img.dart';

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
    return CustomSingleChild(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      [
        Sizes.s67.verticalSpace,
        const SuccessImgWidget(),
        Sizes.s33.verticalSpace,
        const DoneSuccessfullyTextWidget(),
        Sizes.s9.verticalSpace,
        const OrderNumberTextWidget(),
        if (1.sw <= 427 && 1.sh <= 952)...
        [
          Sizes.s67.verticalSpace,
        ]
        else...
        [
          Sizes.s150.verticalSpace,
        ],
        const CheckOutNavButtonsWidget().align(Alignment.bottomCenter),
        Sizes.s16.verticalSpace,
        GestureDetector(
          onTap: ()
          {
            log('Route to the main Screen...');
            AppRouter.router.goNamed(AppRoutes.home);
          },
          child: const MainPageTextWidget()
        ),
        Sizes.s16.verticalSpace,
      ]
    );
  }
}