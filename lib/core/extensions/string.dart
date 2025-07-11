import 'package:flutter/material.dart';

extension LocalizedStringExtension on String {
  /// Choose string based on language
  String localized(BuildContext context, {required String ar, required String en}) {
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
  }) {
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

  bool get isEmail => RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  ).hasMatch(this ?? '');

  bool get emailContainsAtSign => this != null && this!.contains('@');
  bool get emailEndsWithDomain => RegExp(r'\.[a-zA-Z]{2,}$').hasMatch(this ?? '');

  bool get hasValidPassword
  {
    if (this == null) return false;

    final value = this!;
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]).{8,}$',
    ).hasMatch(value);
  }

  bool get passwordHasUpperCase => RegExp(r'[A-Z]').hasMatch(this ?? '');
  bool get passwordHasLowerCase => RegExp(r'[a-z]').hasMatch(this ?? '');
  bool get passwordHasDigit => RegExp(r'\d').hasMatch(this ?? '');
  bool get passwordHasSpecialChar => RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]').hasMatch(this ?? '');
  bool get passwordIsLongEnough => (this ?? '').length >= 8;

  bool get isEgyptianPhone
  {
    if (this == null) return false;
    final cleaned = this!.replaceAll(RegExp(r'\D'), '');
    if (cleaned.length != 11 && cleaned.length != 13) return false;
    return RegExp(r'^(?:\+20|0)?1[0125]\d{8}$').hasMatch(this!);
  }

  bool get isSaudiPhone
  {
    if (this == null) return false;
    final cleaned = this!.replaceAll(RegExp(r'\D'), '');
    if (cleaned.length != 9 && cleaned.length != 12) return false;
    return RegExp(r'^(?:\+966|0)?5\d{8}$').hasMatch(this!);
  }

  bool get isPhoneNumber
  {
    return isEgyptianPhone || isSaudiPhone;
  }

  bool get isFullPhoneLength
  {
    if (this == null) return false;
    final cleaned = this!.replaceAll(RegExp(r'\D'), '');
    return cleaned.length >= 10 && cleaned.length <= 13;
  }

  bool get isFullName
  {
    if (this == null) return false;
    final fullNameRegExp = RegExp(r"^(?!.*[^\p{L} \-'])[A-Za-zÀ-ÖØ-öø-ÿ]+([ '-][A-Za-zÀ-ÖØ-öø-ÿ]+)*$", unicode: true,);
    return fullNameRegExp.hasMatch(this!.trim());
  }

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

    if (this != null)
    {
      if (this!.runes.any((r) => arToEn.containsKey(String.fromCharCode(r))))
      {
        return this!.split('').map((char) => arToEn[char] ?? char).join();
      }
    }

    return this;
  }
}
