import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../constants/app_margins.dart';
import '../../../constants/app_styles.dart';
import '../../../extensions/margin.dart';
import '../../snackbar.dart';
import '../notifications_bill.dart';
import 'back_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget 
{
  const CustomAppBar({
    super.key,
    this.backgroundColor,
    this.leading,
    this.leadingWidth,
    this.title,
    this.actions,
    this.actionsPadding,

    this.isNotifications,
    this.isCustomBack,
    this.toolbarHeight,
  });

  final Color? backgroundColor;
  final String? title;
  final double? leadingWidth;
  final Widget? leading;
  final bool? isCustomBack;
  final List<Widget>? actions;
  final bool? isNotifications;
  final EdgeInsetsGeometry? actionsPadding;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: Text(title ?? '', style: AppStyles.extraBold()),
      automaticallyImplyLeading: false,
      leadingWidth: leadingWidth ?? 44.w,
      leading: (isCustomBack ?? true) ? backButtonOnTap(context) : null,
      actions: (isNotifications ?? false) ? (actions ?? [billOnTap(context)]) : null,
      actionsPadding: (isNotifications ?? false) ? (actionsPadding ?? AppMargins.directional.smallEnd) : EdgeInsets.zero,
    ).marginDirectional(start: 16.w, top: 11.h);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 0));

  
}

  GestureDetector backButtonOnTap(BuildContext context) {
    return GestureDetector(onTap: () => leadingOnTap(context), child: const CustomAppBar().leading ?? const BackButtonWidget());
  } 
  
  GestureDetector billOnTap(context) => GestureDetector(onTap: () {
    log('Notifications Bill has been Pressed...');
    try
    {
      if (AppRouter.currentRoute == AppRoutes.notifications)
      {CustomSnackBar().show(context, S.current.alreadyInNotifications);}
      else
      {AppRouter.router.pushNamed(AppRoutes.notifications);}
    }
    catch (error, stack)
    {log('Error Going to Notifications Screen: $error, Stack is: $stack');}
  }, child: const BillWidget(),);

  void leadingOnTap(BuildContext context) {
    try
    {
      log('Trying to Pop...');
      AppRouter.router.pop();
    }
    catch (error, stack)
    {
      log('Error While Popping with AppRouter: $error\nStack: $stack');
    }
  }
