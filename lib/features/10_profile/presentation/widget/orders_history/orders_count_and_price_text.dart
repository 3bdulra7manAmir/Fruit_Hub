import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class OrdersCountTextWidget extends StatelessWidget
{
  const OrdersCountTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
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
        Text(': 10', style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
        Sizes.s15.horizontalSpace,
        Text('250 ${S.current.le}', style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
      ],
    );
  }
}

