import 'package:flutter/material.dart';

extension AdaptiveTextStyle on TextStyle
{
  /// Modify style based on current system language (ar/en)
  TextStyle byLocale( {TextStyle? ar, TextStyle? en} )
  {
    final lang = WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    return lang == 'ar' ? (ar ?? this) : (en ?? this);
  }

  /// Modify style based on system theme (dark/light)
  TextStyle byTheme( {TextStyle? dark, TextStyle? light} )
  {
    final isDark = WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    return isDark ? (dark ?? this) : (light ?? this);
  }

  /// Modify style based on both locale and theme
  TextStyle byLocaleAndTheme(
  {
    TextStyle? arDark,
    TextStyle? arLight,
    TextStyle? enDark,
    TextStyle? enLight,
  })
  {
    final isDark = WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    final lang = WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    if (lang == 'ar' && isDark) return arDark ?? this;
    if (lang == 'ar' && !isDark) return arLight ?? this;
    if (lang == 'en' && isDark) return enDark ?? this;
    return enLight ?? this;
  }
}
