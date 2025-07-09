import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';

class BillWidget extends StatelessWidget
{
  const BillWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 34.h, width: 34.w,
      decoration: BoxDecoration(color: AppColors.color.kGreen005, borderRadius: AppRadiuses.circular.xLarge,),
      child: Stack(
        children:
        [
          Center(child: SvgPicture.asset(AppAssets.icons.billGreen,)),
          Positioned(
            bottom: 21.h,  right: 16, 
            child: SvgPicture.asset(AppAssets.icons.billRedDot)
          ),
        ],
      ),
    );
  }
}