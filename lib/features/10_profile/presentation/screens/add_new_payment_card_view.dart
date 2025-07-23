import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../09_checkout/presentation/widget/checkout_payment/card_auth_info.dart';
import '../../../09_checkout/presentation/widget/checkout_payment/card_number_textfield.dart';
import '../../../09_checkout/presentation/widget/checkout_payment/card_owner_textfield.dart';
import '../../../09_checkout/presentation/widget/checkout_payment/default_card.dart';
import '../widget/payment_methods/new_payment_button.dart';

class AddNewPaymentCard extends StatelessWidget
{
  const AddNewPaymentCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "اضافه بطاقه جديده",),
      body: CustomSingleChild(
        children:
        [
          Sizes.s24.verticalSpace,
          CardOwnerNameWidget(),
          Sizes.s8.verticalSpace,
          CardNumberWidget(),
          Sizes.s8.verticalSpace,
          CardAuthInfoWidget(),
          Sizes.s18.verticalSpace,
          MakeCardAsDeafultWidget(),
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