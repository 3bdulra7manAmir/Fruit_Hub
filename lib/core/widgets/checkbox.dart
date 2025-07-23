import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/color_manager/colors.dart';
import '../constants/app_borders.dart';

class CustomCheckbox extends StatelessWidget
{
  const CustomCheckbox({
  super.key, 
  this.borderRadius, 
  this.borderColor, 
  this.borderWidth, 
  this.fillColor, 
  this.value, 
  this.onChanged});

  final BorderRadiusGeometry? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final WidgetStateProperty<Color?>? fillColor;
  final bool? value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context)
  {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: borderRadius ?? AppRadiuses.circular.xXXXXSmall),
      side: BorderSide(color: borderColor ?? AppColors.color.kGrey005, width: borderWidth ?? 1.5.w),
      fillColor: fillColor ?? WidgetStateProperty.resolveWith((states)
      {
        if (states.contains(WidgetState.selected))
        {
          return AppColors.color.kGreen001;
        }
        return null;
      }),
      value: value,
      onChanged: onChanged,
    );
  }
}