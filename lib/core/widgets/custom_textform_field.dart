import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/color_manager/colors.dart';
import '../../config/theme/font_manager/font_weights.dart';
import '../constants/app_styles.dart';


class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({
    super.key,
    this.height,
    this.width,
    this.isEnabled,
    this.keyboardType,
    this.readOnly,
    this.obscureText,
    this.controller,
    this.validator,
    this.onSubmitted,
    this.hintText,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixStyle,
    this.fillColor,
    this.focusedColor,
    this.borderRadius,

  });

  final double? height;
  final double? width;
  final bool? isEnabled;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onSubmitted;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? suffixStyle;
  final Color? fillColor;
  final Color? focusedColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: height ?? 56.h, width: width ?? double.infinity,
      child: TextFormField(
        enabled: isEnabled,
        keyboardType: keyboardType,
        readOnly: readOnly ?? false,
        obscureText: obscureText ?? false,
        controller: controller,
        validator: validator,
        onFieldSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle ?? AppStyles.semiBold(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.boldWeight),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixStyle: suffixStyle,
          fillColor: fillColor,
          focusColor: focusedColor,
          border: borderRadius != null ? OutlineInputBorder(borderRadius: borderRadius!,): null,
        ),
      ),
    );
  }
}
