import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import 'time_line_card.dart';

class OrderTimeLineListWidget extends StatelessWidget
{
  const OrderTimeLineListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 5,
      padding: EdgeInsets.zero,
      separatorBuilder: (_, __) => Sizes.s0.verticalSpace, //SizedBox.Shrink()
      itemBuilder: (context, index) => const TimeLineCardWidget(),
    );
  }
}

