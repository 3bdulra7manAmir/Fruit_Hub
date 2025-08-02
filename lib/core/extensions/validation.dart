extension ValidationExtensions on String?
{

  /// Checks if the string is a valid email format
  bool get isEmail {
    final emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@'
      r'((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    return emailRegex.hasMatch(this ?? '');
  }

  /// Checks if the string contains an '@' character (for email)
  bool get emailContainsAtSign => (this ?? '').contains('@');

  /// Checks if the string ends with a valid domain (like .com, .net)
  bool get emailEndsWithDomain {
    final domainRegex = RegExp(r'\.[a-zA-Z]{2,}$');
    return domainRegex.hasMatch(this ?? '');
  }

  /// Validates if the password meets strong password criteria
  bool get hasValidPassword {
    final passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)'
      r'(?=.*[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]).{8,}$',
    );
    return passwordRegex.hasMatch(this ?? '');
  }

  /// Checks if password has at least one uppercase letter
  bool get passwordHasUpperCase => RegExp(r'[A-Z]').hasMatch(this ?? '');
  /// Checks if password has at least one lowercase letter
  bool get passwordHasLowerCase => RegExp(r'[a-z]').hasMatch(this ?? '');
  /// Checks if password contains at least one digit
  bool get passwordHasDigit => RegExp(r'\d').hasMatch(this ?? '');
  /// Checks if password has at least one special character
  bool get passwordHasSpecialChar => RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=/\\\[\]~`]').hasMatch(this ?? '');
  /// Checks if password is 8 characters or longer
  bool get passwordIsLongEnough => (this ?? '').length >= 8;
  /// Validates if the string is a valid Egyptian phone number
  bool get isEgyptianPhone {
    final cleaned = (this ?? '').replaceAll(RegExp(r'\D'), '');
    if (cleaned.length != 11 && cleaned.length != 13) return false;
    return RegExp(r'^(?:\+20|0)?1[0125]\d{8}$').hasMatch(cleaned);
  }

  /// Alias for `isEgyptianPhone`
  bool get isPhoneNumber => isEgyptianPhone;
  /// Validates if the phone number is within a valid digit range
  bool get isFullPhoneLength {
    final cleaned = (this ?? '').replaceAll(RegExp(r'\D'), '');
    return cleaned.length >= 10 && cleaned.length <= 13;
  }

  /// Validates if the string is a full name (first + last name, letters only)
  bool get isFullName {
    final fullNameRegex = RegExp(
      r"^(?!.*[^\p{L} \-'])[A-Za-zÀ-ÖØ-öø-ÿ]+([ '-][A-Za-zÀ-ÖØ-öø-ÿ]+)*$",
      unicode: true,
    );
    return fullNameRegex.hasMatch((this ?? '').trim());
  }

  /// Validates if the string is a valid credit or debit card number
  bool get isCreditOrDebitCardNumber {
    final digitsOnly = (this ?? '').replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.length < 13 || digitsOnly.length > 19) return false;
    if (!RegExp(r'^\d+$').hasMatch(digitsOnly)) return false;

    // Luhn Algorithm
    int sum = 0;
    bool alternate = false;

    for (int i = digitsOnly.length - 1; i >= 0; i--) {
      int n = int.parse(digitsOnly[i]);
      if (alternate) {
        n *= 2;
        if (n > 9) n -= 9;
      }
      sum += n;
      alternate = !alternate;
    }

    return sum % 10 == 0;
  }

  /// Converts Arabic numerals to English numerals
  String? get convertNumbers {
    const arToEn = {
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

  /// Validates if the string is a valid CVV code (3 or 4 digits)
  bool get isCvvCode {
    final value = this?.replaceAll(RegExp(r'\D'), '') ?? '';
    return RegExp(r'^\d{3,4}$').hasMatch(value);
  }
  /// Checks if CVV length is either 3 or 4 digits
  bool get isValidCvvLength {
    final value = this?.replaceAll(RegExp(r'\D'), '') ?? '';
    return value.length == 3 || value.length == 4;
  }

  /// Returns `true` if the string matches the MM/YY format (e.g., 09/25)
  bool get isExpireDateFormat {
    final value = this?.trim() ?? '';
    final regex = RegExp(r'^(0[1-9]|1[0-2])\/\d{2}$');
    return regex.hasMatch(value);
  }
  /// Returns `true` if the expiration date is valid (in the future)
  bool get isNotExpiredDate {
    final value = this?.trim() ?? '';
    if (!value.isExpireDateFormat) return false;
    final parts = value.split('/');
    final inputMonth = int.tryParse(parts[0]);
    final inputYear = int.tryParse(parts[1]);
    if (inputMonth == null || inputYear == null) return false;
    final now = DateTime.now();
    final currentYear = now.year % 100;
    final currentMonth = now.month;
    return (inputYear > currentYear) || (inputYear == currentYear && inputMonth >= currentMonth);
  }

}