import 'package:flutter/material.dart';

extension StringExtensions on String?
{

  bool get isEmail
  {
    final emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@'
      r'((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    return emailRegex.hasMatch(this ?? '');
  }
  bool get emailContainsAtSign => (this ?? '').contains('@');
  bool get emailEndsWithDomain
  {
    final domainRegex = RegExp(r'\.[a-zA-Z]{2,}$');
    return domainRegex.hasMatch(this ?? '');
  }

  bool get hasValidPassword
  {
    final passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)'
      r'(?=.*[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]).{8,}$',
    );
    return passwordRegex.hasMatch(this ?? '');
  }
  bool get passwordHasUpperCase => RegExp(r'[A-Z]').hasMatch(this ?? '');
  bool get passwordHasLowerCase => RegExp(r'[a-z]').hasMatch(this ?? '');
  bool get passwordHasDigit => RegExp(r'\d').hasMatch(this ?? '');
  bool get passwordHasSpecialChar => RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]').hasMatch(this ?? '');
  bool get passwordIsLongEnough => (this ?? '').length >= 8;

  bool get isEgyptianPhone
  {
    final cleaned = (this ?? '').replaceAll(RegExp(r'\D'), '');
    if (cleaned.length != 11 && cleaned.length != 13) return false;
    return RegExp(r'^(?:\+20|0)?1[0125]\d{8}$').hasMatch(cleaned);
  }

  bool get isPhoneNumber => isEgyptianPhone;
  bool get isFullPhoneLength
  {
    final cleaned = (this ?? '').replaceAll(RegExp(r'\D'), '');
    return cleaned.length >= 10 && cleaned.length <= 13;
  }

  bool get isFullName
  {
    final fullNameRegex = RegExp(
      r"^(?!.*[^\p{L} \-'])[A-Za-zÀ-ÖØ-öø-ÿ]+([ '-][A-Za-zÀ-ÖØ-öø-ÿ]+)*$",
      unicode: true,
    );
    return fullNameRegex.hasMatch((this ?? '').trim());
  }

  bool get isCreditOrDebitCardNumber
  {
    final digitsOnly = (this ?? '').replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.length < 13 || digitsOnly.length > 19) return false;
    if (!RegExp(r'^\d+$').hasMatch(digitsOnly)) return false;

    // Luhn Algorithm
    int sum = 0;
    bool alternate = false;

    for (int i = digitsOnly.length - 1; i >= 0; i--)
    {
      int n = int.parse(digitsOnly[i]);
      if (alternate)
      {
        n *= 2;
        if (n > 9) n -= 9;
      }
      sum += n;
      alternate = !alternate;
    }

    return sum % 10 == 0;
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
    if (this == null) return null;
    return this!.split('').map((char) => arToEn[char] ?? char).join();
  }

  /// CVV (3 or 4 digits only)
  bool get isCvvCode
  {
    final value = this?.replaceAll(RegExp(r'\D'), '') ?? '';
    return RegExp(r'^\d{3,4}$').hasMatch(value);
  }

  /// CVV fixed length check (for 3 or 4 digits only)
  bool get isValidCvvLength
  {
    final value = this?.replaceAll(RegExp(r'\D'), '') ?? '';
    return value.length == 3 || value.length == 4;
  }


  /// Returns `true` if the string matches the MM/YY format (e.g., 09/25)
  bool get isExpireDateFormat
  {
    final value = this?.trim() ?? '';
    final regex = RegExp(r'^(0[1-9]|1[0-2])\/\d{2}$');
    return regex.hasMatch(value);
  }

  /// Returns `true` if the date is in the future (not expired)
  bool get isNotExpiredDate
  {
    final value = this?.trim() ?? '';
    if (!value.isExpireDateFormat) return false;
    final parts = value.split('/');
    final inputMonth = int.tryParse(parts[0]);
    final inputYear = int.tryParse(parts[1]);
    if (inputMonth == null || inputYear == null) return false;
    final now = DateTime.now();
    final currentYear = now.year % 100; // Take last 2 digits
    final currentMonth = now.month;
    // Expiration is valid if year is greater, or same year but later month
    return (inputYear > currentYear) || (inputYear == currentYear && inputMonth >= currentMonth);
  }

  String localized(BuildContext context, {required String ar, required String en})
  {
    final locale = Localizations.localeOf(context);
    return locale.languageCode == 'ar' ? ar : en;
  }

  String localizedWithTheme(
    BuildContext context,
  {
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

  String darkOrLight(BuildContext context, {required String dark, required String light})
  {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? dark : light;
  }
}
