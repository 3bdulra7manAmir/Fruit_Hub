import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';


class PaymentOptionTextWidget extends StatelessWidget
{
  const PaymentOptionTextWidget({
    super.key,

  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(S.current.cashOnDelivery, style: AppStyles.extraLight(fontColor: AppColors.color.kBlack004),),
        Sizes.s6.verticalSpace,
        Text(S.current.pickup2, style: AppStyles.extraLight(
          fontColor: AppColors.color.kBlack004.withValues(alpha: 0.5)),),
      ],
    );
  }
}

class PaymentCardPriceTextWidget extends ConsumerWidget
{
  const PaymentCardPriceTextWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Text('${40.toString().localizedNumbers(ref)} ${S.current.le}', style: AppStyles.extraLight(fontWeight: AppFontWeights.boldWeight, 
        fontColor: AppColors.color.kGreen008
      ),
    );
  }
}
