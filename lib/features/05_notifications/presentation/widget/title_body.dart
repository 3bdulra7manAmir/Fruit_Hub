import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import 'title_all_read.dart';
import 'title_count.dart';
import 'title_header.dart';

class NotificationsTitleWidget extends StatelessWidget
{
  const NotificationsTitleWidget({super.key,});
  

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [  //
        const HeaderWidget(header: "جديد"),
        Sizes.s6.horizontalSpace,
        const CountWidget(count: "2",),
        const Spacer(),
        const MarkAllAsReadWidget(),
      ],
    );
  }
}




