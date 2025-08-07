import 'package:flutter/material.dart';

extension ThemingExtensions on String?
{

  /// Returns Arabic or English string based on current locale
  String localized(BuildContext context, {required String ar, required String en})
  {
    final locale = Localizations.localeOf(context);
    return locale.languageCode == 'ar' ? ar : en;
  }

  /// Returns dark or light string depending on current theme
  String darkOrLight(BuildContext context, {required String dark, required String light})
  {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? dark : light;
  }

}