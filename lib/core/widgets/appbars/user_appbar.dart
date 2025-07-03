import 'package:flutter/material.dart';

class UserAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const UserAppBar({
    super.key,
    this.backgroundColor,
    this.isDefaultBack,
    this.barLeading,
    this.barLeadingWidth,
    this.barTitle,
    this.barActions,
    this.barActionsPadding,
    this.isPaddingTop,
    this.toolbarHeight, 
  });

  final Color? backgroundColor;
  final bool? isDefaultBack;
  final Widget? barLeading;
  final double? barLeadingWidth;
  final Widget? barTitle;
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
      leading: barLeading,
      leadingWidth: barLeadingWidth,
      title: barTitle,
      actions: barActions,
      actionsPadding: barActionsPadding,
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 0));
}
