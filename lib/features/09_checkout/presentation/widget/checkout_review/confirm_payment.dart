import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/i18n/localization/localization_controller.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../checkout_payment/payment_method_card.dart';
import '../common_container.dart';

class ConfirmPaymentMethodWidget extends StatelessWidget
{
  const ConfirmPaymentMethodWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CommonContainerWidget(
      child: Column(
        children:
        [
          const PaymentMethodEditWidget(),
          Sizes.s13.verticalSpace,
          const PaymentMethodCardNumbersWidget(),
        ],
      ),
    );
  }
}


class PaymentMethodEditWidget extends StatelessWidget
{
  const PaymentMethodEditWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(S.current.paymentMethod2, style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () 
          {log('Edit has been Pressed...');},
          child: Row(
            children:
            [
              SvgPicture.asset(AppAssets.icons.editGrey),
              Sizes.s4.horizontalSpace,
              Text(S.current.edit, style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),),
            ],
          ),
        ),
      ],
    );
  }
}


class PaymentMethodCardNumbersWidget extends ConsumerWidget
{
  const PaymentMethodCardNumbersWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final rowAxis = ref.watch(localizationProvider);
    return Row(
      mainAxisAlignment: rowAxis == const Locale('en') ? MainAxisAlignment.end : MainAxisAlignment.start,
      children:
      [
        Text('**** **** **** 6522', style: AppStyles.bold(
          fontWeight: AppFontWeights.regularWeight, 
          fontColor: AppColors.color.kGrey001),
          textDirection: TextDirection.ltr,
        ),
        Sizes.s29.horizontalSpace,
        PaymentMethodCardWidget(
          paymentMethodImg: AppAssets.icons.paymentMethodLogo,
          width: 53.w, height: 34.h,
        ),
      ],
    );
  }
}

