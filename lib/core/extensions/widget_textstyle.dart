import 'package:flutter/material.dart';

extension AdaptiveTextStyle on TextStyle
{
  /// Modify style based on current language (ar/en)
  TextStyle byLocale(BuildContext context,
      {TextStyle? ar, TextStyle? en})
      {
        final lang = Localizations.localeOf(context).languageCode;
        return lang == 'ar' ? (ar ?? this) : (en ?? this);
      }

  /// Modify style based on theme (dark/light)
  TextStyle byTheme(BuildContext context,
      {TextStyle? dark, TextStyle? light})
      {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        return isDark ? (dark ?? this) : (light ?? this);
      }

  /// Modify style based on both locale and theme
  TextStyle byLocaleAndTheme(BuildContext context,
      {TextStyle? arDark,
      TextStyle? arLight,
      TextStyle? enDark,
      TextStyle? enLight})
      {
      final isDark = Theme.of(context).brightness == Brightness.dark;
      final lang = Localizations.localeOf(context).languageCode;

      if (lang == 'ar' && isDark) return arDark ?? this;
      if (lang == 'ar' && !isDark) return arLight ?? this;
      if (lang == 'en' && isDark) return enDark ?? this;
      return enLight ?? this;
    }
}
