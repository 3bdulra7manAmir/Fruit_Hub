import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_styles.dart';

class LogOutWidget extends StatelessWidget
{
  const LogOutWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.directional.logOutCard,
      height: 41.h, width: 375.w, alignment: Alignment.center,
      decoration: BoxDecoration(color: AppColors.color.kGreen006,),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Expanded(
            child: Text("تسجيل الخروج", style: AppStyles.extraLight(fontColor: AppColors.color.kGreen001,),),
          ),
          Expanded(child: SvgPicture.asset("assets/icons/Profile/SignOut_Green.svg")),
        ],
      ),
    );
  }
}
