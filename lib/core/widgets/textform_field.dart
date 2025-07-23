import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config/theme/color_manager/colors.dart';
import '../../config/theme/font_manager/font_weights.dart';
import '../constants/app_styles.dart';


class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({
    super.key,
    this.height,
    this.width,
    this.inputFormatters,
    this.isEnabled,
    this.keyboardType,
    this.readOnly,
    this.obscureText,
    this.controller,
    this.style,
    this.validator,
    this.onSubmitted,
    this.hintText,
    this.hintTextDirection,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixStyle,
    this.fillColor,
    this.focusedColor,
    this.borderRadius,
    this.borderRadiusColor,
    this.contentPadding,
  });

  final double? height;
  final double? width;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isEnabled;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextStyle? style;
  final void Function(String)? onSubmitted;
  final String? hintText;
  final TextDirection? hintTextDirection;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? suffixStyle;
  final Color? fillColor;
  final Color? focusedColor;
  final BorderRadius? borderRadius;
  final Color? borderRadiusColor;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: height, width: width ?? double.infinity,
      child: TextFormField(
        inputFormatters: inputFormatters,
        enabled: isEnabled,
        keyboardType: keyboardType,
        readOnly: readOnly ?? false,
        obscureText: obscureText ?? false,
        controller: controller,
        validator: validator,
        onFieldSubmitted: onSubmitted,
        style: style,
        decoration: InputDecoration(
          hintText: hintText,
          hintTextDirection: hintTextDirection,
          hintStyle: hintStyle ?? AppStyles.extraLight(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.boldWeight),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixStyle: suffixStyle,
          fillColor: fillColor,
          focusColor: focusedColor,
          border: borderRadius != null ? OutlineInputBorder(
            borderRadius: borderRadius!, 
            borderSide: BorderSide(color: borderRadiusColor ?? Colors.transparent,)
          ): null,
          contentPadding: contentPadding,
        ),
      ),
    );
  }
}
