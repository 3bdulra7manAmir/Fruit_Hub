import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';

class UserImgWidget extends StatelessWidget
{
  const UserImgWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 44.h, width: 44.w,
      decoration: BoxDecoration(
        color: AppColors.color.kGreen003,
        borderRadius: AppRadiuses.circular.xLarge,
        image: DecorationImage(image: AssetImage(AppAssets.imgs.user), fit: BoxFit.contain,)
      ),
    );
  }
}
