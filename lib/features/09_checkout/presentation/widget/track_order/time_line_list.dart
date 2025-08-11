import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import 'time_line_card.dart';

class OrderTimeLineListWidget extends StatelessWidget {
  const OrderTimeLineListWidget({super.key});

  static const int _itemCount = 5;

  @override
  Widget build(BuildContext context) {
    return CustomListviewBuilder(
      itemCount: _itemCount,
      padding: EdgeInsets.zero,
      separatorBuilder: (_, _) => Sizes.s0.verticalSpace,
      itemBuilder: (_, index) => TimeLineCardWidget(
        index: index,
        itemCount: _itemCount,
      ),
    );
  }
}
