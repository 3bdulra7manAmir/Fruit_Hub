import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/extensions/margin.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../controllers/mark_as_read_controller.dart';
import '../widget/cards_list.dart';
import '../widget/title_body.dart';

class Notifications extends StatelessWidget
{
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.notifications, isNotifications: true,),
      body: CustomSingleChild(
        isMargin: false,
        children: [
          Sizes.s16.verticalSpace,
          Consumer(
            builder: (_, ref, _) {
              final markAsRead = ref.watch(markAsReadProvider);
              return NotificationsTitleWidget(header: S.current.neww, count: markAsRead ? '2' : '0',);
            },
          ).marginSymmetric(horizontal: 16.w),
          Sizes.s16.verticalSpace,
          const NotificationsCardListWidget(),
          Sizes.s16.verticalSpace,
          NotificationsTitleWidget(
            header: S.current.earlier,
            count: '2',
          ).marginSymmetric(horizontal: 16.w),
          Sizes.s26.verticalSpace,
          const NotificationsCardListWidget(),
        ],
      ),
    );
  }
}
