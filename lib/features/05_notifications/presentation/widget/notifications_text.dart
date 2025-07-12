import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_styles.dart';

class NotificationsTextWidget extends StatelessWidget
{
  const NotificationsTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: 205.w,
      child: RichText(
        text: TextSpan(
          style: AppStyles.semiBold(fontColor: AppColors.color.kGrey009),
          children:
          [
            const TextSpan(text: "خصم "),
            TextSpan(text: "50% ", style: AppStyles.semiBold(fontColor: AppColors.color.kRed001),),
            const TextSpan(text: "علي اسعار الفواكه بمناسبه العيد"),
          ],
        ),
        maxLines: 2
        ),
    );
  }
}