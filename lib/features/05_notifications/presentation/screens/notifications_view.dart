import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/card.dart';
import '../widget/title.dart';

class Notifications extends StatelessWidget
{
  const Notifications({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: "الاشعارات", isNotifications: true,),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.s16.verticalSpace,
            const NotificationsListTitleWidget(),
            Sizes.s16.verticalSpace,
            const NotificationsCard(isGreen: false,),
          ]
        ),
      ),
    );
  }
}