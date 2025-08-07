import 'package:flutter/material.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_paddings.dart';

class CommonContainerWidget extends StatelessWidget
{
  const CommonContainerWidget({
    super.key, 
  required this.child, 
  this.padding, 
  this.height, 
  this.width});

  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Widget child;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: padding ?? AppPadding.symmetric.confirmPaymentMethod,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xXXXXSmall,
        color: AppColors.color.kGrey027,
      ), child: child,
    );
  }
}