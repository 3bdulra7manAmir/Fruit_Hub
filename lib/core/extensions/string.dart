import 'package:flutter/material.dart';

extension LocalizedStringExtension on String
{
  /// Choose string based on language
  String localized(BuildContext context, {required String ar})
  {
    final locale = Localizations.localeOf(context);
    return locale.languageCode == 'ar' ? ar : this;
  }

  /// Choose different strings based on both locale and theme
  String localizedWithTheme(BuildContext context,
      {required String arDark,
      required String arLight,
      required String enDark,
      required String enLight})
      {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        final isAr = Localizations.localeOf(context).languageCode == 'ar';
        if (isAr && isDark) return arDark;
        if (isAr && !isDark) return arLight;
        if (!isAr && isDark) return enDark;
        return enLight;
      }
}
