import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/numbers_and_dates.dart';


class OrdersCountTextWidget extends ConsumerWidget
{
  const OrdersCountTextWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Row(
      children:
      [
        Flexible(
          child: Text(S.current.numberOfOrders, style: AppStyles.extraLight(
            fontWeight: AppFontWeights.regularWeight, 
            fontColor: AppColors.color.kGrey002),
          ),
        ),
        Text(': ${10.toString().localizedNumbers(ref)}', style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
        Sizes.s15.horizontalSpace,
        Text('${250.toString().localizedNumbers(ref)} ${S.current.le}', style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
      ],
    );
  }
}

