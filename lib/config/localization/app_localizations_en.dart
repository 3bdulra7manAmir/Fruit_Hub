// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get error => 'Error';

  @override
  String get welcomeIn => 'Welcome In';

  @override
  String get onBoardingDescription =>
      'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and enjoy the best deals and top quality.';

  @override
  String get onBoarding2Description =>
      'We offer you the finest carefully selected fruits. Check details, images, and reviews to ensure you choose the perfect fruit.';

  @override
  String get searchAndShop => 'Search and shop';

  @override
  String get startNow => 'Start now';

  @override
  String get enterEmail => 'Enter email';

  @override
  String get emailIsRequired => 'Email is required';

  @override
  String get invalidEmailSymbol => 'Email must contain \'@\' symbol.';

  @override
  String get invalidEmailDomain =>
      'Email must end with a valid domain (e.g., .com, .org).';

  @override
  String get emailFailureValidation => 'Error validating email:';

  @override
  String get fullNameIsRequired => 'Full name is required.';

  @override
  String get fullNameinvalid => 'Please enter a valid full name.';

  @override
  String get fullNameValidationFailure => 'Validation failed for full name:';

  @override
  String get passwordIsRequired => 'Password is required';

  @override
  String get passwordLength8Character =>
      'Password must be at least 8 characters long.';

  @override
  String get passwordOneUpperCase =>
      'Password must contain at least one uppercase letter.';

  @override
  String get passwordOneLowerCase =>
      'Password must contain at least one lowercase letter.';

  @override
  String get passwordOneNumber => 'Password must contain at least one number.';

  @override
  String get passwordOneSpecialCharacter =>
      'Password must contain at least one special character.';

  @override
  String get invalidPassword => 'Invalid Password';

  @override
  String get passwordValidationFailure => 'Error validating password:';

  @override
  String get phoneNumberIsRequired => 'Phone number is required';

  @override
  String get invalidPhoneNumber => 'Invalid phone number';

  @override
  String get unsupportedPhoneNumber => 'Un-Supported phone number';
}
