import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const NotificationsImgWidget(),
        Sizes.s13.horizontalSpace,
        const NotificationsTextWidget(),
        const Spacer(),
        const NotificationsTimeWidget(),
      ],
    );
  }
}