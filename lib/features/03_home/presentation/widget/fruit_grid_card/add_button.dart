import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';

class FruitAddButton extends StatelessWidget
{
  const FruitAddButton({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 36.w, height: 36.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color ?? AppColors.color.kGreen001,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}

