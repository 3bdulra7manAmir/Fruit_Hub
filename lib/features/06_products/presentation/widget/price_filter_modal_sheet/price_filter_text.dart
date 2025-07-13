import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class PriceFilterTextWidget extends StatelessWidget
{
  const PriceFilterTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.s8.horizontalSpace,
        SvgPicture.asset(AppAssets.icons.priceTag),
        Sizes.s8.horizontalSpace,
        Text("السعر :", style: AppStyles.semiBold(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
      ],
    );
  }
}