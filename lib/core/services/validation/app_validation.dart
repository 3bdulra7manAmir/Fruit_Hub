import 'package:e_commerce_app/core/extensions/string.dart';
import 'package:flutter/material.dart';

import '../../../config/localization/app_localizations.dart';


abstract class AppValidation
{
  AppValidation._();

  static String? emailValidation(String? value, BuildContext context)
  {
    try
    {
      if (value == null || value.isEmpty)
      {
        return S.of(context)!.emailIsRequired;
      }
      if (!value.contains('@'))
      {
        return S.of(context)!.invalidEmailSymbol;
      }
      if (!value.emailEndsWithDomain)
      {
        return S.of(context)!.invalidEmailDomain;
      }
      if (!value.isEmail)
      {
        return S.of(context)!.enterEmail;
      }
      return null;
    }
    catch (e)
    {
      return "${S.of(context)!.emailFailureValidation} ${e.toString()}";
    }
  }

  static String? fullNameValidation(String? value, BuildContext context)
  {
    try
    {
      if (value == null || value.trim().isEmpty)
      {
        return S.of(context)!.fullNameIsRequired;
      }
      if (!value.isFullName)
      {
        return S.of(context)!.fullNameinvalid;
      }
      return null;
    }
    catch (e)
    {
      return "${S.of(context)!.fullNameValidationFailure} ${e.toString()}";
    }
  }

  static String? passwordValidation(String? value, BuildContext context)
  {
    try
    {
      final password = value ?? "";
      if (password.isEmpty)
      {
        return S.of(context)!.passwordIsRequired;
      }
      if (!password.passwordIsLongEnough)
      {
        return S.of(context)!.passwordLength8Character;
      }
      if (!password.passwordHasUpperCase)
      {
        return S.of(context)!.passwordOneUpperCase;
      }
      if (!password.passwordHasLowerCase)
      {
        return S.of(context)!.passwordOneLowerCase;
      }
      if (!password.passwordHasDigit)
      {
        return S.of(context)!.passwordOneNumber;
      }
      if (!password.passwordHasSpecialChar)
      {
        return S.of(context)!.passwordOneSpecialCharacter;
      }
      if (!password.hasValidPassword)
      {
        return S.of(context)!.invalidPassword;
      }
      return null;
    }
    catch (e)
    {
      return "${S.of(context)!.passwordValidationFailure} ${e.toString()}";
    }
  }

  static String? phoneNumberValidation(String? value, BuildContext context)
  {
  try
  {
    final cleanedValue = value?.convertNumbers;
    if (cleanedValue == null || cleanedValue.isEmpty)
    {
      return S.of(context)!.phoneNumberIsRequired;
    }
    if (!cleanedValue.isPhoneNumber)
    {
      if (cleanedValue.isFullPhoneLength)
      {
        return S.of(context)!.unsupportedPhoneNumber;
      }
      return S.of(context)!.invalidPhoneNumber;
    }
    return null;
  }
  on Exception catch (e)
  {
    return e.toString();
  }
}

}


