import 'package:flutter/material.dart';

class NavBarItemModel
{
  const NavBarItemModel({
    this.key,
    required this.icon,
    this.inactiveIcon,
    this.title,
    this.activeColor,
    this.backgroundColorOpacity = 0.15,
    this.inactiveColor,
    this.activeIconColor,
    this.activeTitleColor,
  });

  final Key? key;
  final String icon;
  final Widget? inactiveIcon;
  final String? title;
  final Color? activeColor;
  final num backgroundColorOpacity;
  final Color? inactiveColor;
  final Color? activeIconColor;
  final Color? activeTitleColor;
}
