import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../config/theme/color_manager/colors.dart';
import '../constants/app_borders.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
    this.baseColor,
    this.highlightColor,
    this.borderRadiusColor,
    this.margin,
    this.padding,
    this.alignment,
  });

  final Color? baseColor;
  final Color? highlightColor;
  final double width;
  final double height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final Color? borderRadiusColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? AppColors.color.kGrey001,
      highlightColor: highlightColor ?? AppColors.color.kGrey001,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        padding: padding,
        alignment: alignment,
        decoration: BoxDecoration(
          color: borderRadiusColor ?? AppColors.color.kWhite001,
          borderRadius: borderRadius ?? AppRadiuses.circular.medium,
        ),
      ),
    );
  }
}
