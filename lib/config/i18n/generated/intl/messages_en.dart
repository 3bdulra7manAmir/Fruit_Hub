// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "emailFailureValidation":
            MessageLookupByLibrary.simpleMessage("Error validating email:"),
        "emailIsRequired":
            MessageLookupByLibrary.simpleMessage("Email is required"),
        "enterEmail": MessageLookupByLibrary.simpleMessage("Enter email"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "fullNameIsRequired":
            MessageLookupByLibrary.simpleMessage("Full name is required."),
        "fullNameValidationFailure": MessageLookupByLibrary.simpleMessage(
            "Validation failed for full name:"),
        "fullNameinvalid": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid full name."),
        "invalidEmailDomain": MessageLookupByLibrary.simpleMessage(
            "Email must end with a valid domain (e.g., .com, .org)."),
        "invalidEmailSymbol": MessageLookupByLibrary.simpleMessage(
            "Email must contain \'@\' symbol."),
        "invalidPassword":
            MessageLookupByLibrary.simpleMessage("Invalid Password"),
        "invalidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Invalid phone number"),
        "onBoarding2Description": MessageLookupByLibrary.simpleMessage(
            "We offer you the finest carefully selected fruits. Check details, images, and reviews to ensure you choose the perfect fruit."),
        "onBoardingDescription": MessageLookupByLibrary.simpleMessage(
            "Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and enjoy the best deals and top quality."),
        "passwordIsRequired":
            MessageLookupByLibrary.simpleMessage("Password is required"),
        "passwordLength8Character": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 8 characters long."),
        "passwordOneLowerCase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one lowercase letter."),
        "passwordOneNumber": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one number."),
        "passwordOneSpecialCharacter": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one special character."),
        "passwordOneUpperCase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one uppercase letter."),
        "passwordValidationFailure":
            MessageLookupByLibrary.simpleMessage("Error validating password:"),
        "phoneNumberIsRequired":
            MessageLookupByLibrary.simpleMessage("Phone number is required"),
        "searchAndShop":
            MessageLookupByLibrary.simpleMessage("Search and shop"),
        "startNow": MessageLookupByLibrary.simpleMessage("Start now"),
        "unsupportedPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Un-Supported phone number"),
        "welcomeIn": MessageLookupByLibrary.simpleMessage("Welcome In")
      };
}
