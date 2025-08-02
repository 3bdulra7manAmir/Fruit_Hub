import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_styles.dart';

class CartTitleWidget extends StatelessWidget
{
  const CartTitleWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.symmetric.xSmall,
      height: 41.h, width: 375.w, alignment: Alignment.center,
      decoration: BoxDecoration(color: AppColors.color.kGreen006,),
      child: Text(S.current.cartProductsCount(3), style: AppStyles.extraLight(
        fontColor: AppColors.color.kGreen001, 
        fontWeight: AppFontWeights.regularWeight),
      ),
    );
  }
}
