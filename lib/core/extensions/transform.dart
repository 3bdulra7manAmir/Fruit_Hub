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

  /// Helper to check if locale is RTL (supports more than just Arabic)
  bool _isRtl(Locale locale)
  {
    const rtlLanguages = ['en'];
    return rtlLanguages.contains(locale.languageCode.toLowerCase());
  }
}
