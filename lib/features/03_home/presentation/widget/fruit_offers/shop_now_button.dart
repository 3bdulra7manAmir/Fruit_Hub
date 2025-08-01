import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/buttons/button.dart';

class ShopNowButtonWidget extends StatelessWidget
{
  const ShopNowButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: S.current.shopNow,
      textStyle: AppStyles.extraLight(
        fontWeight: AppFontWeights.boldWeight,
        fontColor: AppColors.color.kGreen001,
      ),
      onPressed: ()
      {log('Shop Now Has been Pressed...');}, 
      backgroundColor: AppColors.color.kWhite001,
      borderRadius: AppRadiuses.circular.xXXXXSmall,
      width: 116.w, height: 32.h,
    );
  }
}
