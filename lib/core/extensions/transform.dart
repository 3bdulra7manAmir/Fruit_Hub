import 'dart:math' as math;
import 'package:flutter/material.dart';

extension WidgetFlipsPerLocale on Widget
{
  /// Flip horizontally (mirror) for RTL languages (like Arabic)
  Widget flipForRtl(Locale locale, {Alignment alignment = Alignment.center})
  {
    return _isRtl(locale)
        ? Transform(
            alignment: alignment,
            transform: Matrix4.identity()..scale(-1.0, 1.0),
            child: this,
          )
        : this;
  }

  /// Flip horizontally (mirror) for LTR languages (like English)
  Widget flipForLtr(Locale locale, {Alignment alignment = Alignment.center})
  {
    return !_isRtl(locale)
        ? Transform(
            alignment: alignment,
            transform: Matrix4.identity()..scale(-1.0, 1.0),
            child: this,
          )
        : this;
  }

  /// Always flip horizontally regardless of locale
  Widget flipHorizontally({Alignment alignment = Alignment.center})
  {
    return Transform(
      alignment: alignment,
      transform: Matrix4.identity()..scale(-1.0, 1.0),
      child: this,
    );
  }

  /// Always flip vertically (upside-down mirror)
  Widget flipVertically({Alignment alignment = Alignment.center})
  {
    return Transform(
      alignment: alignment,
      transform: Matrix4.identity()..scale(1.0, -1.0),
      child: this,
    );
  }

  /// Rotate 180 degrees (pi radians)
  Widget rotate180()
  {
    return Transform.rotate(
      angle: math.pi,
      child: this,
    );
  }

  /// Helper to check if locale is RTL (supports more than just Arabic)
  bool _isRtl(Locale locale)
  {
    const rtlLanguages = ['ar', 'en'];
    return rtlLanguages.contains(locale.languageCode.toLowerCase());
  }
}
