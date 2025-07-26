import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';

class UserProfileImg extends StatelessWidget
{
  const UserProfileImg({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      alignment: Alignment.center, clipBehavior: Clip.none,
      children:
      [
        Image.asset(AppAssets.imgs.userProfile, width: 73.w, height: 73.h,),
        Positioned(
          bottom: -11.h,
          child: Container(
            padding: AppPadding.all.userCamera,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey022,
              borderRadius: AppRadiuses.circular.large,
              border: Border.all(color: AppColors.color.kWhite001, width: Sizes.s2.w),
            ),
            child: SvgPicture.asset(AppAssets.icons.cameraGreen, width: 16.w, height: 16.h,)
          ),
        ),
      ],
    );
  }
}
