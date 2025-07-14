import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';

class CartItemImgWidget extends StatelessWidget
{
  const CartItemImgWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 73.w, alignment: Alignment.center,
      color: AppColors.color.kGrey008,
      child: Image.asset(AppAssets.icons.watermelonV3),
    );
  }
}

