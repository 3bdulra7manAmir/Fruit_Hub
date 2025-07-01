import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/color_manager/colors.dart';
import '../../config/theme/font_manager/font_sizes.dart';
import '../../config/theme/font_manager/font_weights.dart';
import '../../config/theme/font_manager/fonts.dart';

abstract class AppStyles
{
  AppStyles._();

  /// Size= [23] Weight= [w900], Color= [_0D0D12],
  static TextStyle extraBlack({
    double? fontSize,
    FontWeight? fontWeight,
    Color? fontColor,
    String? fontFamily,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    TextOverflow? textOverflow,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.large.sp,
      fontWeight: fontWeight ?? AppFontWeights.blackWeight,
      color: fontColor ?? AppColors.color.kBlack001,
      fontFamily: fontFamily ?? AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }
}
