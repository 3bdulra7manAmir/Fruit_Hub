// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get error => 'خطأ';

  @override
  String get welcomeIn => 'مرحبًا بك في';

  @override
  String get onBoardingDescription =>
      'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.';

  @override
  String get onBoarding2Description =>
      'نُقدِّم لك نخبة مختارة من أفضل الفواكه. تصفّح التفاصيل والصور والتقييمات لتختار الفاكهة المثالية بثقة.';

  @override
  String get searchAndShop => 'ابحث وتسوق';

  @override
  String get startNow => 'ابدأ الآن';

  @override
  String get enterEmail => 'أدخل البريد الإلكتروني';

  @override
  String get emailIsRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get invalidEmailSymbol =>
      'يجب أن يحتوي البريد الإلكتروني على رمز \'@\'.';

  @override
  String get invalidEmailDomain =>
      'يجب أن ينتهي البريد الإلكتروني بنطاق صالح (مثل .com، .org).';

  @override
  String get emailFailureValidation => 'خطأ في التحقق من البريد الإلكتروني:';

  @override
  String get fullNameIsRequired => 'الاسم الكامل مطلوب.';

  @override
  String get fullNameinvalid => 'يرجى إدخال اسم كامل صالح.';

  @override
  String get fullNameValidationFailure => 'فشل التحقق من الاسم الكامل:';

  @override
  String get passwordIsRequired => 'كلمة المرور مطلوبة';

  @override
  String get passwordLength8Character =>
      'يجب أن تكون كلمة المرور مكونة من ٨ أحرف على الأقل.';

  @override
  String get passwordOneUpperCase =>
      'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل.';

  @override
  String get passwordOneLowerCase =>
      'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل.';

  @override
  String get passwordOneNumber =>
      'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل.';

  @override
  String get passwordOneSpecialCharacter =>
      'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل.';

  @override
  String get invalidPassword => 'كلمة المرور غير صالحة';

  @override
  String get passwordValidationFailure => 'خطأ في التحقق من كلمة المرور:';

  @override
  String get phoneNumberIsRequired => 'رقم الهاتف مطلوب';

  @override
  String get invalidPhoneNumber => 'رقم الهاتف غير صالح';

  @override
  String get unsupportedPhoneNumber => 'رقم الهاتف غير مدعوم حالياً';
}
