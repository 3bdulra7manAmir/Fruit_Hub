import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/form.dart';
import '../../domain/usecases/payment_cards_fetch_usecase.dart';
import '../widget/payment_methods/add_new_payment_button_shimmer.dart';
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
      appBar: CustomAppBar(
        title: S.current.payments, isCustomBack: true, isNotifications: true,
        actions: const [PaymentActionWidget()],
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
            Consumer(
              builder: (_, ref, _) => ref.watch(fetchPaymentCardsUsecaseProvider).when(
                data: (_) => AddNewPaymentMethodButtonWidget(formKey: cardFormKey),
                error: (_, _) => const SizedBox.shrink(),
                loading: () => const AddNewPaymentButtonShimmer(),
              ),
            ),
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
      onTap: () {AppLogger.debug('Edit...');},
      child: SvgPicture.asset(AppAssets.icons.editGreyV2,),
    );
  }
}

