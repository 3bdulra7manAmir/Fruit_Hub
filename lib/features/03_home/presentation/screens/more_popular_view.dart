import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_margins.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/app_appbar.dart';
import '../../../../core/widgets/custom_column.dart';
import '../widget/home/fruit_grid_list.dart';
import '../widget/home/user_appbar/notifications_bill.dart';
import '../widget/more_popular/most_sold.dart';


class MorePopular extends StatelessWidget
{
  const MorePopular ({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: "الأكثر مبيعًا",
        barActions: [
          GestureDetector(
            onTap: () {log("Notifications Bill has been Pressed...");},
            child: BillWidget())
        ],
        barActionsPadding: AppMargins.directional.smallEnd,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size24.verticalSpace,
            MostSoldWidgetExpaneded(),
            Sizes.size8.verticalSpace,
            FruitGridListWidget(),
            Sizes.size16.verticalSpace,
          ],
        ),
      ),
    );
  }
}