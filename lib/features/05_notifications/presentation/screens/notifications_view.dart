import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/cards_list.dart';
import '../widget/title_body.dart';

class Notifications extends StatelessWidget
{
  const Notifications({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: "الاشعارات", isNotifications: true,),
      body: CustomSingleChild(
        isMargin: false,
        children:
        [
          Sizes.s16.verticalSpace,
          const NotificationsTitleWidget(header: "جديد", count: "2",).marginSymmetric(horizontal: 16.w),
          Sizes.s16.verticalSpace,
          const NotificationsCardListWidget(),
          Sizes.s16.verticalSpace,
          const NotificationsTitleWidget(header: "في وقت سابق", count: "2",).marginSymmetric(horizontal: 16.w),
          Sizes.s26.verticalSpace,
          const NotificationsCardListWidget(),
        ]
      ),
    );
  }
}