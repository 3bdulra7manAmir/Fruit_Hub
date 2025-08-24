import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';
import '../../../../../core/utils/functions/payment_identifier.dart';

class PaymentMethodCard extends ConsumerWidget
{
  const PaymentMethodCard({super.key, required this.cardNumber,});

  final String cardNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final cardType = PaymentIdentifier.instance.getCardType(cardNumber);
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xXXSmall,
        color: AppColors.color.kGrey025,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:
        [
          Text(cardNumber.maskedCardGrouped.localizedNumbers(ref)!, style: AppStyles.bold(
            fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.semiBoldWeight),
            textDirection: TextDirection.ltr,),
          Sizes.s15.horizontalSpace,
          switch (cardType) {
            'Visa' => SvgPicture.asset(AppAssets.icons.visa, width: 24.w, height: 24.h,),
            'MasterCard' => SvgPicture.asset(AppAssets.icons.mastercard, width: 24.w, height: 24.h,),
            'American Express' => SvgPicture.asset(AppAssets.icons.amex, width: 24.w, height: 24.h,),
            'Discover' => SvgPicture.asset(AppAssets.icons.discover, width: 24.w, height: 24.h,),
            'Diners Club' => SvgPicture.asset(AppAssets.icons.dinersClub, width: 24.w, height: 24.h,),
            //'Maestro' => SvgPicture.asset(AppAssets.icons.maestro),
            _ => const SizedBox.shrink(),
          },
          Sizes.s15.horizontalSpace,
        ],
      ),
    );
  }
}
