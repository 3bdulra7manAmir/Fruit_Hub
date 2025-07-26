import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../widget/payment_methods/new_payment_button.dart';
import '../widget/payment_methods/payment_method_list.dart';

class PaymentMethods extends StatelessWidget
{
  PaymentMethods({super.key});

  final GlobalKey<FormState> cardFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'المدفوعات', isCustomBack: true, isNotifications: true,
        actions: [PaymentActionWidget()],
      ),
      body: CustomForm(
        formKey: cardFormKey,
        formBody: CustomSingleChild(
          children:
          [
            Sizes.s16.verticalSpace,
            const PaymentMethodsListWidget(),
            if (1.sw <= 427 && 1.sh <= 952)...
            [Sizes.s150.verticalSpace,]
            else...[Sizes.s300.verticalSpace,],
            AddNewPaymentMethodButtonWidget(formKey: cardFormKey,),
            Sizes.s16.verticalSpace,
          ]
        ),
      ),
    );
  }
}


class PaymentActionWidget extends StatelessWidget
{
  const PaymentActionWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () {log('Edit...');},
      child: SvgPicture.asset(AppAssets.icons.editGreyV2,),
    );
  }
}

