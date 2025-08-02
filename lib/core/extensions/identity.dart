import 'package:flutter/material.dart';

extension LocaleContextExtension on BuildContext
{
  bool get isArabic => Localizations.localeOf(this).languageCode == 'ar';
  bool get isEnglish => Localizations.localeOf(this).languageCode == 'en';

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  bool get isLightMode => Theme.of(this).brightness == Brightness.light;

  bool get isArabicDark => isArabic && isDarkMode;
  bool get isArabicLight => isArabic && isLightMode;

  bool get isEnglishDark => isEnglish && isDarkMode;
  bool get isEnglishLight => isEnglish && isLightMode;
}
