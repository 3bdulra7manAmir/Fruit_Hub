import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import 'notifications_img.dart';
import 'notifications_text.dart';
import 'notifications_time.dart';

class NotificationsCard extends StatelessWidget
{
  const NotificationsCard({super.key, required this.isGreen});

  final bool isGreen;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 59.h,
      color: isGreen ? AppColors.color.kGreen006 : AppColors.color.kWhite001,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          NotificationsImgWidget(),
          Sizes.s13.horizontalSpace,
          NotificationsTextWidget(),
          Spacer(),
          NotificationsTimeWidget(),
        ],
      ),
    );
  }
}