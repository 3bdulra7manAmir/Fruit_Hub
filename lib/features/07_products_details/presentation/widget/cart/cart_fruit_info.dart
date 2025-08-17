import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';

class FruitQuantityPriceWidget extends ConsumerWidget
{
  const FruitQuantityPriceWidget({super.key, required this.itemName, required this.itemPrice, });

  final String itemName;
  final String itemPrice;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(itemName, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        Sizes.s4.verticalSpace,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(style: AppStyles.extraLight(fontWeight: AppFontWeights.boldWeight,),
          children:
          [
            TextSpan(text: '${itemPrice.localizedNumbers(ref)} ${S.current.le}', style: AppStyles.extraLight(fontColor: AppColors.color.kOrange001)),
            TextSpan(text: ' / ', style: AppStyles.extraLight(fontColor: AppColors.color.kOrange002)),
            TextSpan(text: S.current.kilo, style: AppStyles.extraLight(fontColor: AppColors.color.kOrange002)),
          ]
          ),
        ),
      ],
    );
  }
}