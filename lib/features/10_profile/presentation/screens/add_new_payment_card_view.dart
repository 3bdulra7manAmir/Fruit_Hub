import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
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
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expireDateController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.addNewCard,),
      body: CustomForm(
        formKey: cardFormKey,
        formBody: CustomSingleChild(
          children:
          [
            Sizes.s24.verticalSpace,
            const CardOwnerNameWidget(),
            Sizes.s8.verticalSpace,
            CardNumberWidget(cardNumberController: cardNumberController,),
            Sizes.s8.verticalSpace,
            CardAuthInfoWidget(expireDateController: expireDateController,),
            Sizes.s18.verticalSpace,
            const MakeCardAsDeafultWidget(),
            if (1.sw <= 427 && 1.sh <= 952)...
            [
              Sizes.s150.verticalSpace,
            ]
            else...[Sizes.s300.verticalSpace,],
            AddNewPaymentMethodButtonWidget(formKey: cardFormKey, cardNumberController: cardNumberController, expireDateController: expireDateController,),
            Sizes.s16.verticalSpace,
          ]
        ),
      ),
    );
  }
}