import '../../../config/i18n/generated/l10n.dart';
import '../../extensions/validation.dart';


abstract class AppValidation
{
  AppValidation._();

  static String? emailValidation(String? value)
  {
    try
    {
      if (value == null || value.isEmpty)
      {
        return S.current.emailIsRequired;
      }
      if (!value.contains('@'))
      {
        return S.current.invalidEmailSymbol;
      }
      if (!value.emailEndsWithDomain)
      {
        return S.current.invalidEmailDomain;
      }
      if (!value.isEmail)
      {
        return S.current.enterEmail;
      }
      return null;
    }
    catch (error, stack)
    {
      return '${S.current.emailFailureValidation} ${error.toString()}, stack: $stack';
    }
  }

  static String? fullNameValidation(String? value)
  {
    try
    {
      if (value == null || value.trim().isEmpty)
      {
        return S.current.fullNameIsRequired;
      }
      if (!value.isFullName)
      {
        return S.current.fullNameinvalid;
      }
      return null;
    }
    catch (error, stack)
    {
      return '${S.current.fullNameValidationFailure} ${error.toString()}, stack: $stack';
    }
  }

  static String? passwordValidation(String? value)
  {
    try
    {
      final password = value ?? '';
      if (password.isEmpty)
      {
        return S.current.passwordIsRequired;
      }
      if (!password.passwordIsLongEnough)
      {
        return S.current.passwordLength8Character;
      }
      if (!password.passwordHasUpperCase)
      {
        return S.current.passwordOneUpperCase;
      }
      if (!password.passwordHasLowerCase)
      {
        return S.current.passwordOneLowerCase;
      }
      if (!password.passwordHasDigit)
      {
        return S.current.passwordOneNumber;
      }
      if (!password.passwordHasSpecialChar)
      {
        return S.current.passwordOneSpecialCharacter;
      }
      if (!password.hasValidPassword)
      {
        return S.current.invalidPassword;
      }
      return null;
    }
    catch (error, stack)
    {
      return '${S.current.passwordValidationFailure} ${error.toString()}, stack: $stack';
    }
  }

  static String? phoneNumberValidation(String? value)
  {
    try
    {
      final cleanedValue = value?.convertNumbers;
      if (cleanedValue == null || cleanedValue.isEmpty)
      {
        return S.current.phoneNumberIsRequired;
      }
      if (!cleanedValue.isPhoneNumber)
      {
        if (cleanedValue.isFullPhoneLength)
        {
          return S.current.unsupportedPhoneNumber;
        }
        return S.current.invalidPhoneNumber;
      }
      return null;
    }
    on Exception catch (erorr, stack)
    {
      return '${erorr.toString()}, stack: $stack';
    }
  }

  static String? paymentMethodNumValidation(String? value)
  {
    try
    {
      final card = value?.convertNumbers;
      if (card == null || card.isEmpty)
      {
        return S.current.cardNumberIsRequired;
      }
      if (!card.isCreditOrDebitCardNumber)
      {
        return S.current.invalidCardNumber;
      }
      return null;
    }
    catch (error, stack)
    {
      return '${S.current.cardNumberValidationFailure} ${error.toString()}, stack: $stack';
    }
  }

  static String? cvvValidation(String? value)
  {
    try
    {
      final cleaned = value?.replaceAll(RegExp(r'\D'), '');

      if (cleaned == null || cleaned.isEmpty)
      {
        return S.current.cvvRequired;
      }
      if (!value.isValidCvvLength)
      {
        return S.current.cvvMustBe3or4Digits;
      }
      if (!value.isCvvCode)
      {
        return S.current.invalidCvv;
      }
      return null;
    }
    catch (error, stack)
    {
      return '${S.current.cvvValidationFailure} ${error.toString()}, stack: $stack';
    }
  }

  static String? expireDateValidation(String? value)
  {
    try
    {
      if (value == null || value.trim().isEmpty)
      {
        return S.current.expireDateRequired;
      }
      if (!value.isExpireDateFormat)
      {
        return S.current.expireDateWrongFormat;
      }
      if (!value.isNotExpiredDate)
      {
        return S.current.cardExpired;
      }
      return null;
    }
    catch (error, stack)
    {
      return '${S.current.expireDateValidationError} ${error.toString()}, stack: $stack';
    }
  }

  static String? addressValidation(String? value) {
  try
    {

      if (value == null || value.trim().isEmpty) {
        return S.current.addressIsRequired;
      }
      if (value.length < 10) {
        return S.current.addressTooShort;
      }
      if (!ValidationExtensions.hasLetters.hasMatch(value)) {
        return S.current.addressMustContainLetters;
      }
      if (!ValidationExtensions.hasNumbers.hasMatch(value)) {
        return S.current.addressMustContainNumber;
      }
      if (ValidationExtensions.isOnlySymbols.hasMatch(value)) {
        return S.current.addressOnlySymbols;
      }

      return null;
    } 
    catch (error, stack)
    {
      return '${S.current.addressValidationFailure} ${error.toString()}, stack: $stack';
    }
  }

  static String? cityValidation(String? value) {
  try
    {
      if (value == null || value.trim().isEmpty) {
        return S.current.cityIsRequired;
      }
      if (value.length < 2) {
        return S.current.cityTooShort;
      }
      if (!ValidationExtensions.cityNamePattern.hasMatch(value)) {
        return S.current.cityOnlyLettersAllowed;
      }
      return null;
    }
    catch (error, stack)
    {
      return '${S.current.cityValidationFailure} ${error.toString()}, stack: $stack';
    }
  }
}

