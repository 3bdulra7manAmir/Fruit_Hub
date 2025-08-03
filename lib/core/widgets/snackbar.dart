import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/color_manager/colors.dart';
import '../constants/app_sizes.dart';
import '../constants/app_styles.dart';

class CustomSnackBar
{

  void show(BuildContext context, String message)
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.color.kWhite006,
        content: Text(message, style: AppStyles.semiBold(
          fontColor: AppColors.color.kWhite003, 
          fontSize: Sizes.s14.sp),), 
      ),
    );
  }
}
