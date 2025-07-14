import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class CartItemPrice extends StatelessWidget
{
  const CartItemPrice({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
      [
        Sizes.s6.verticalSpace,
        SvgPicture.asset(AppAssets.icons.trash),
        Spacer(),
        Text("60 جنيه ", style: AppStyles.bold(fontColor: AppColors.color.kOrange001),),
        Sizes.s8.verticalSpace,
      ],
    );
  }
}

