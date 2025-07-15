import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomLinearIndicator extends StatelessWidget
{
  const CustomLinearIndicator({
    super.key, 
    this.padding, 
    this.alignment, 
    this.width, 
    this.lineHeight, 
    required this.percent, 
    required this.backgroundColor, 
    required this.progressColor,});

  final EdgeInsets? padding;
  final MainAxisAlignment? alignment;
  final double? width;
  final double? lineHeight;
  final double percent;
  final Color backgroundColor;
  final Color progressColor;

  @override
  Widget build(BuildContext context)
  {
    return LinearPercentIndicator(
      padding: padding ?? EdgeInsets.zero,
      alignment: alignment ?? MainAxisAlignment.start,
      width: width,
      lineHeight: lineHeight ?? 8.h,
      percent: percent,
      backgroundColor: backgroundColor,
      progressColor:  progressColor,
    );
  }
}