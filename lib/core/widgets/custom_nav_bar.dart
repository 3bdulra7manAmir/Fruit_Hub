import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavBar extends StatelessWidget
{
  const CustomNavBar(
    {super.key, 
    this.padding, 
    this.alignment, 
    this.width, 
    this.height, 
    this.borderRadius, 
    this.color, 
    required this.navBarChildren});

  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final Widget navBarChildren;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: width, height: height ?? 70.h,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 27.w, vertical: 20.h), 
      alignment: alignment ?? Alignment.center,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.only(topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r)), 
      ),
      child: navBarChildren,
    );
  }
}

