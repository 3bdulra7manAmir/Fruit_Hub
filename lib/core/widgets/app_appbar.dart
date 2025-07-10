import 'dart:developer';
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/router/app_router.dart';
import '../../config/router/app_routes.dart';
import '../../features/03_home/presentation/widget/home/user_appbar/notifications_bill.dart';
import '../constants/app_images.dart';
import '../constants/app_margins.dart';
import '../constants/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const CustomAppBar({
    super.key,
    this.backgroundColor,
    this.isDefaultBack,
    this.barLeading,
    this.barLeadingWidth,
    required this.barTitle,
    this.barActions,
    this.barActionsPadding,
    this.toolbarHeight,
    this.isNotifications,
    this.isCustomBack,
  });

  final Color? backgroundColor;
  final bool? isDefaultBack;
  final Widget? barLeading;
  final double? barLeadingWidth;
  final String barTitle;
  final List<Widget>? barActions;
  final EdgeInsetsGeometry? barActionsPadding;
  final double? toolbarHeight;
  final bool? isNotifications;
  final bool? isCustomBack;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: Text(barTitle, style: AppStyles.extraBold()),
      automaticallyImplyLeading: isDefaultBack ?? false,
      leadingWidth: barLeadingWidth ?? 44.w,
      leading: (isCustomBack ?? true) ? backButtonOnTap(context) : null,
      actions: (isNotifications ?? false) ? (barActions ?? [billOnTap()]) : null,
      actionsPadding: (isNotifications ?? false) ? (barActionsPadding ?? AppMargins.directional.smallEnd) : EdgeInsets.zero,
    ).marginDirectional(start: 16.w, top: 11.h);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 0));

  GestureDetector backButtonOnTap(BuildContext context) => 
  GestureDetector(onTap: () => leadingOnTap(context), child: barLeading ?? SvgPicture.asset(AppAssets.icons.rightBlackArrow),);
}

  GestureDetector billOnTap() => 
  GestureDetector(onTap: ()
  {
    log("Notifications Bill has been Pressed...");
    AppRouter.router.pushNamed(AppRoutes.notifications);
  }, child: const BillWidget(),);

  void leadingOnTap(BuildContext context)
  {
    try
    {
      log("Trying to Pop...");
      AppRouter.router.pop();
    }
    catch (err, stack)
    {
      log("Error While Popping with AppRouter: $err\nStack: $stack");
    }
  }
