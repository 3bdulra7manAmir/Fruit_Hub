import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import 'title_all_read.dart';
import 'title_count.dart';
import 'title_header.dart';

class NotificationsTitleWidget extends StatelessWidget
{
  const NotificationsTitleWidget({super.key, required this.header, required this.count,});
  final String header;
  final String count;
  

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [  //
        HeaderWidget(header: header),
        Sizes.s6.horizontalSpace,
        CountWidget(count: count,),
        const Spacer(),
        const MarkAllAsReadWidget(),
      ],
    );
  }
}




