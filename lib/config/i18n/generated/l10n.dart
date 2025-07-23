// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `خطأ`
  String get error {
    return Intl.message(
      'خطأ',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `مرحبًا بك في`
  String get welcomeIn {
    return Intl.message(
      'مرحبًا بك في',
      name: 'welcomeIn',
      desc: '',
      args: [],
    );
  }

  /// `اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.`
  String get onBoardingDescription {
    return Intl.message(
      'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
      name: 'onBoardingDescription',
      desc: '',
      args: [],
    );
  }

  /// `نُقدِّم لك نخبة مختارة من أفضل الفواكه. تصفّح التفاصيل والصور والتقييمات لتختار الفاكهة المثالية بثقة.`
  String get onBoarding2Description {
    return Intl.message(
      'نُقدِّم لك نخبة مختارة من أفضل الفواكه. تصفّح التفاصيل والصور والتقييمات لتختار الفاكهة المثالية بثقة.',
      name: 'onBoarding2Description',
      desc: '',
      args: [],
    );
  }

  /// `ابحث وتسوق`
  String get searchAndShop {
    return Intl.message(
      'ابحث وتسوق',
      name: 'searchAndShop',
      desc: '',
      args: [],
    );
  }

  /// `ابدأ الآن`
  String get startNow {
    return Intl.message(
      'ابدأ الآن',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `أدخل البريد الإلكتروني`
  String get enterEmail {
    return Intl.message(
      'أدخل البريد الإلكتروني',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `البريد الإلكتروني مطلوب`
  String get emailIsRequired {
    return Intl.message(
      'البريد الإلكتروني مطلوب',
      name: 'emailIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن يحتوي البريد الإلكتروني على رمز '@'.`
  String get invalidEmailSymbol {
    return Intl.message(
      'يجب أن يحتوي البريد الإلكتروني على رمز \'@\'.',
      name: 'invalidEmailSymbol',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن ينتهي البريد الإلكتروني بنطاق صالح (مثل .com، .org).`
  String get invalidEmailDomain {
    return Intl.message(
      'يجب أن ينتهي البريد الإلكتروني بنطاق صالح (مثل .com، .org).',
      name: 'invalidEmailDomain',
      desc: '',
      args: [],
    );
  }

  /// `خطأ في التحقق من البريد الإلكتروني:`
  String get emailFailureValidation {
    return Intl.message(
      'خطأ في التحقق من البريد الإلكتروني:',
      name: 'emailFailureValidation',
      desc: '',
      args: [],
    );
  }

  /// `الاسم الكامل مطلوب.`
  String get fullNameIsRequired {
    return Intl.message(
      'الاسم الكامل مطلوب.',
      name: 'fullNameIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `يرجى إدخال اسم كامل صالح.`
  String get fullNameinvalid {
    return Intl.message(
      'يرجى إدخال اسم كامل صالح.',
      name: 'fullNameinvalid',
      desc: '',
      args: [],
    );
  }

  /// `فشل التحقق من الاسم الكامل:`
  String get fullNameValidationFailure {
    return Intl.message(
      'فشل التحقق من الاسم الكامل:',
      name: 'fullNameValidationFailure',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور مطلوبة`
  String get passwordIsRequired {
    return Intl.message(
      'كلمة المرور مطلوبة',
      name: 'passwordIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تكون كلمة المرور مكونة من ٨ أحرف على الأقل.`
  String get passwordLength8Character {
    return Intl.message(
      'يجب أن تكون كلمة المرور مكونة من ٨ أحرف على الأقل.',
      name: 'passwordLength8Character',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل.`
  String get passwordOneUpperCase {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل.',
      name: 'passwordOneUpperCase',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل.`
  String get passwordOneLowerCase {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل.',
      name: 'passwordOneLowerCase',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على رقم واحد على الأقل.`
  String get passwordOneNumber {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل.',
      name: 'passwordOneNumber',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل.`
  String get passwordOneSpecialCharacter {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل.',
      name: 'passwordOneSpecialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور غير صالحة`
  String get invalidPassword {
    return Intl.message(
      'كلمة المرور غير صالحة',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `خطأ في التحقق من كلمة المرور:`
  String get passwordValidationFailure {
    return Intl.message(
      'خطأ في التحقق من كلمة المرور:',
      name: 'passwordValidationFailure',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف مطلوب`
  String get phoneNumberIsRequired {
    return Intl.message(
      'رقم الهاتف مطلوب',
      name: 'phoneNumberIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف غير صالح`
  String get invalidPhoneNumber {
    return Intl.message(
      'رقم الهاتف غير صالح',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف غير مدعوم حالياً`
  String get unsupportedPhoneNumber {
    return Intl.message(
      'رقم الهاتف غير مدعوم حالياً',
      name: 'unsupportedPhoneNumber',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
