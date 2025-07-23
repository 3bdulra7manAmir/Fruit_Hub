import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/payment_methods/new_payment_button.dart';
import '../widget/payment_methods/payment_method_list.dart';

class PaymentMethods extends StatelessWidget
{
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context)
  {
    log("Width: ${1.sw}, Height: ${1.sh}");
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: "المدفوعات", isCustomBack: true, isNotifications: true,
        barActions: [SvgPicture.asset(AppAssets.icons.editGreyV2, )],
      ),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          PaymentMethodsListWidget(),
          if (1.sw <= 427 && 1.sh <= 952)...
          [
            Sizes.s150.verticalSpace,
          ]
          else...[Sizes.s300.verticalSpace,],
          AddNewPaymentMethodButtonWidget(),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}

