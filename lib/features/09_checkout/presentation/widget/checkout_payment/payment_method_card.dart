import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/utils/functions/payment_identifier.dart';

class PaymentMethodCardWidget extends StatelessWidget
{
  const PaymentMethodCardWidget({super.key, required this.cardNumber, this.width, this.height});

  final String cardNumber;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context)
  {
    final cardType = PaymentIdentifier.instance.getCardType(cardNumber);
    return Container(
      width: width ?? 67.w, height: height ?? 43.h, alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.color.kWhite001,
        borderRadius: AppRadiuses.circular.xXXXXSmall,
        border: Border.all(color: AppColors.color.kGrey018),
      ),
      child: switch (cardType) {
        'Visa' => SvgPicture.asset(AppAssets.icons.visa),
        'MasterCard' => SvgPicture.asset(AppAssets.icons.mastercard),
        'American Express' => SvgPicture.asset(AppAssets.icons.amex),
        //'Discover' => SvgPicture.asset(AppAssets.icons.discover),
        //'Maestro' => SvgPicture.asset(AppAssets.icons.maestro),
        //'Diners Club' => SvgPicture.asset(AppAssets.icons.diners),
        _ => const SizedBox.shrink(),
      },
    );
  }
}