import 'package:flutter/material.dart';


extension LocalizedStringExtension on String
{
  /// Choose string based on language
  String localized(BuildContext context, {required String ar, required String en})
  {
    final locale = Localizations.localeOf(context);
    return locale.languageCode == 'ar' ? ar : en;
  }

  /// Choose different strings based on both locale and theme
  String localizedWithTheme(
    BuildContext context, {
    required String arDark,
    required String arLight,
    required String enDark,
    required String enLight,
  })
  {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    if (isAr && isDark) return arDark;
    if (isAr && !isDark) return arLight;
    if (!isAr && isDark) return enDark;
    return enLight;
  }
}


extension GetStringUtils on String?
{
  /// Email validation
  bool get isEmail
  {
    final emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@'
      r'((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    return emailRegex.hasMatch(this ?? '');
  }

  bool get emailContainsAtSign => this?.contains('@') ?? false;

  bool get emailEndsWithDomain
  {
    final domainRegex = RegExp(r'\.[a-zA-Z]{2,}$');
    return domainRegex.hasMatch(this ?? '');
  }

  /// Password checks
  bool get hasValidPassword
  {
    if (this == null) return false;
    final passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)'
      r'(?=.*[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]).{8,}$',
    );
    return passwordRegex.hasMatch(this!);
  }

  bool get passwordHasUpperCase => RegExp(r'[A-Z]').hasMatch(this ?? '');
  bool get passwordHasLowerCase => RegExp(r'[a-z]').hasMatch(this ?? '');
  bool get passwordHasDigit => RegExp(r'\d').hasMatch(this ?? '');
  bool get passwordHasSpecialChar => RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]').hasMatch(this ?? '');
  bool get passwordIsLongEnough => (this ?? '').length >= 8;

  /// Egyptian phone validation
  bool get isEgyptianPhone
  {
    if (this == null) return false;
    final cleaned = this!.replaceAll(RegExp(r'\D'), '');
    if (cleaned.length != 11 && cleaned.length != 13) return false;
    return RegExp(r'^(?:\+20|0)?1[0125]\d{8}$').hasMatch(this!);
  }

  /// General phone validation (Egypt only now)
  bool get isPhoneNumber => isEgyptianPhone;

  /// Full phone length check
  bool get isFullPhoneLength
  {
    final cleaned = this?.replaceAll(RegExp(r'\D'), '') ?? '';
    return cleaned.length >= 10 && cleaned.length <= 13;
  }

  /// Full name check (unicode, Arabic & Latin support)
  bool get isFullName
  {
    if (this == null) return false;
    final fullNameRegex = RegExp(
      r"^(?!.*[^\p{L} \-'])[A-Za-zÀ-ÖØ-öø-ÿ]+([ '-][A-Za-zÀ-ÖØ-öø-ÿ]+)*$",
      unicode: true,
    );
    return fullNameRegex.hasMatch(this!.trim());
  }

  /// Arabic to English number conversion
  String? get convertNumbers
  {
    const arToEn =
    {
      '٠': '0',
      '١': '1',
      '٢': '2',
      '٣': '3',
      '٤': '4',
      '٥': '5',
      '٦': '6',
      '٧': '7',
      '٨': '8',
      '٩': '9',
    };

    if (this == null) return null;

    final containsArabic = this!.runes.any((r) => arToEn.containsKey(String.fromCharCode(r)));

    if (!containsArabic) return this;

    return this!.split('').map((char) => arToEn[char] ?? char).join();
  }
}
