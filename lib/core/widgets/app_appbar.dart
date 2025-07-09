import 'dart:developer';
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/router/app_router.dart';
import '../constants/app_images.dart';
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
    this.isPaddingTop,
    this.toolbarHeight, 
  });

  final Color? backgroundColor;
  final bool? isDefaultBack;
  final Widget? barLeading;
  final double? barLeadingWidth;
  final String barTitle;
  final List<Widget>? barActions;
  final EdgeInsetsGeometry? barActionsPadding;
  final bool? isPaddingTop;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: isDefaultBack ?? false,
      leading: GestureDetector(
        onTap: leadingOnTap,
        child: barLeading ?? SvgPicture.asset(AppAssets.icons.rightBlackArrow,)
      ),
      leadingWidth: barLeadingWidth ?? 44.w,
      title: Text(barTitle, style: AppStyles.extraBold(),),
      centerTitle: true,
      actions: barActions,
      actionsPadding: barActionsPadding,
    ).marginDirectional(start: 16.w, top: 11.h);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 0));

  void leadingOnTap()
  {
    try
    {
      log("Trying to Pop...");
      AppRouter.router.pop();
    }
    catch (err, stack)
    {
      log("Error While Poping: $err ,, Stack: $stack");
      return;
    }
  }
}
