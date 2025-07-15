import 'package:flutter/material.dart';

extension ShadowWrapper on Widget
{
  Widget withShadow({
    BoxShadow? shadow, 
    BorderRadius? borderRadius,
    Color? backgroundColor,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
    BoxBorder? border,
  })
  {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: border,
        boxShadow: shadow != null ? [shadow] : null,
      ),
      child: this,
    );
  }
}
