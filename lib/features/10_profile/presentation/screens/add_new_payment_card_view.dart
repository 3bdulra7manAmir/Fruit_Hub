import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../../../09_checkout/presentation/widget/checkout_payment/card_auth_info.dart';
import '../../../09_checkout/presentation/widget/checkout_payment/card_number_textfield.dart';
import '../../../09_checkout/presentation/widget/checkout_payment/card_owner_textfield.dart';
import '../../../09_checkout/presentation/widget/checkout_payment/default_card.dart';
import '../widget/payment_methods/new_payment_button.dart';


class AddNewPaymentCard extends StatelessWidget
{
  AddNewPaymentCard({super.key});

  final GlobalKey<FormState> cardFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(title: 'اضافه بطاقه جديده',),
      body: CustomForm(
        formKey: cardFormKey,
        formBody: CustomSingleChild(
          children:
          [
            Sizes.s24.verticalSpace,
            const CardOwnerNameWidget(),
            Sizes.s8.verticalSpace,
            const CardNumberWidget(),
            Sizes.s8.verticalSpace,
            const CardAuthInfoWidget(),
            Sizes.s18.verticalSpace,
            const MakeCardAsDeafultWidget(),
            if (1.sw <= 427 && 1.sh <= 952)...
            [
              Sizes.s150.verticalSpace,
            ]
            else...[Sizes.s300.verticalSpace,],
            AddNewPaymentMethodButtonWidget(formKey: cardFormKey,),
            Sizes.s16.verticalSpace,
          ]
        ),
      ),
    );
  }
}