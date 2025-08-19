import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/margin.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/appbar/notifications_bill.dart';
import 'widgets/user_img.dart';
import 'widgets/user_name.dart';

class UserAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const UserAppBar({super.key, this.toolbarHeight});

  final double? toolbarHeight;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 16.w,
      title: Row(
        children:
        [
          GestureDetector(
            onTap: () => AppRouter.router.goNamed(AppRoutes.profile),
            child: const UserImgWidget()
          ),
          Sizes.s11.horizontalSpace,
          const UserNameWidget(),
          const Spacer(),
          GestureDetector(
            onTap: ()
            {
              AppLogger.debug('Notifications have been Pressed');
              AppRouter.router.pushNamed(AppRoutes.notifications);
            },
            child: const BillWidget()
          ),
        ],
      ),
    ).marginDirectional(top: 11.h);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 12.h));
}
