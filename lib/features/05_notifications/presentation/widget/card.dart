import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import 'card_img.dart';
import 'card_text.dart';
import 'card_time.dart';

class NotificationsCardWidget extends StatelessWidget
{
  const NotificationsCardWidget({super.key, this.isGreenBackground});
  final bool? isGreenBackground;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: isGreenBackground! ? AppColors.color.kGreen006 : AppColors.color.kWhite001,
      child: Container(
        margin: AppPadding.symmetric.notificationsCard,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const NotificationsImgWidget(),
            Sizes.s13.horizontalSpace,
            const NotificationsTextWidget(),
            const Spacer(),
            const NotificationsTimeWidget(),
          ],
        ),
      ),
    );
  }
}

