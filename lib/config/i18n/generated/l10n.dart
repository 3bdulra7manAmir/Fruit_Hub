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

  /// `أو`
  String get or {
    return Intl.message(
      'أو',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد`
  String get confirm {
    return Intl.message(
      'تأكيد',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `لا ارغب`
  String get noThanks {
    return Intl.message(
      'لا ارغب',
      name: 'noThanks',
      desc: '',
      args: [],
    );
  }

  /// `تعديل`
  String get edit {
    return Intl.message(
      'تعديل',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `السابق`
  String get previous {
    return Intl.message(
      'السابق',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `التالي`
  String get next {
    return Intl.message(
      'التالي',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `إكمال`
  String get complete {
    return Intl.message(
      'إكمال',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `حفظ التغييرات`
  String get saveChanges {
    return Intl.message(
      'حفظ التغييرات',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `تمت العملية بنجاح!`
  String get success {
    return Intl.message(
      'تمت العملية بنجاح!',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `تم بنجاح !`
  String get success2 {
    return Intl.message(
      'تم بنجاح !',
      name: 'success2',
      desc: '',
      args: [],
    );
  }

  /// `جنية`
  String get le {
    return Intl.message(
      'جنية',
      name: 'le',
      desc: '',
      args: [],
    );
  }

  /// `كم`
  String get kiloG {
    return Intl.message(
      'كم',
      name: 'kiloG',
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

  /// `نُقدِّم لك نخبة مختارة من أفضل الفواكه. تصفّح التفاصيل والصور والتقييمات لتختار الفاكهة المثالية بثقة.`
  String get onBoarding2Description {
    return Intl.message(
      'نُقدِّم لك نخبة مختارة من أفضل الفواكه. تصفّح التفاصيل والصور والتقييمات لتختار الفاكهة المثالية بثقة.',
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

  /// `تسجيل الدخول`
  String get login {
    return Intl.message(
      'تسجيل الدخول',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الخروج`
  String get logout {
    return Intl.message(
      'تسجيل الخروج',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `هل ترغب في تسجيل الخروج ؟`
  String get logoutConfirmation {
    return Intl.message(
      'هل ترغب في تسجيل الخروج ؟',
      name: 'logoutConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `حساب جديد`
  String get newAccount {
    return Intl.message(
      'حساب جديد',
      name: 'newAccount',
      desc: '',
      args: [],
    );
  }

  /// `سجّل حساب جديد`
  String get createAccount {
    return Intl.message(
      'سجّل حساب جديد',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء حساب جديد`
  String get createNewAccount {
    return Intl.message(
      'إنشاء حساب جديد',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `ليس لديك حساب؟`
  String get dontHaveAccount {
    return Intl.message(
      'ليس لديك حساب؟',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `لديك حساب مسبقًا؟`
  String get alreadyHaveAccount {
    return Intl.message(
      'لديك حساب مسبقًا؟',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `تمتلك حساب بالفعل؟`
  String get alreadyHaveAccount2 {
    return Intl.message(
      'تمتلك حساب بالفعل؟',
      name: 'alreadyHaveAccount2',
      desc: '',
      args: [],
    );
  }

  /// `من خلال إنشاء حساب، فإنك توافق على `
  String get byCreatingAccountYouAgree {
    return Intl.message(
      'من خلال إنشاء حساب، فإنك توافق على ',
      name: 'byCreatingAccountYouAgree',
      desc: '',
      args: [],
    );
  }

  /// `الشروط والأحكام الخاصة بنا`
  String get ourTermsAndConditions {
    return Intl.message(
      'الشروط والأحكام الخاصة بنا',
      name: 'ourTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة جوجل`
  String get signInWithGoogle {
    return Intl.message(
      'تسجيل بواسطة جوجل',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة أبل`
  String get signInWithApple {
    return Intl.message(
      'تسجيل بواسطة أبل',
      name: 'signInWithApple',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة فيسبوك`
  String get signInWithFacebook {
    return Intl.message(
      'تسجيل بواسطة فيسبوك',
      name: 'signInWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `البريد الإلكتروني`
  String get email {
    return Intl.message(
      'البريد الإلكتروني',
      name: 'email',
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

  /// `الاسم الكامل`
  String get fullName {
    return Intl.message(
      'الاسم الكامل',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get password {
    return Intl.message(
      'كلمة المرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `كلمة مرور جديدة`
  String get newPassword {
    return Intl.message(
      'كلمة مرور جديدة',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور الجديدة`
  String get newPassword2 {
    return Intl.message(
      'كلمة المرور الجديدة',
      name: 'newPassword2',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور الحالي`
  String get currentPassword {
    return Intl.message(
      'كلمة المرور الحالي',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `أعد إدخال كلمة المرور`
  String get reEnterPassword {
    return Intl.message(
      'أعد إدخال كلمة المرور',
      name: 'reEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد كلمة المرور الجديدة`
  String get confirmNewPassword {
    return Intl.message(
      'تأكيد كلمة المرور الجديدة',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور`
  String get forgotPassword {
    return Intl.message(
      'نسيت كلمة المرور',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور؟`
  String get didForgotPassword {
    return Intl.message(
      'نسيت كلمة المرور؟',
      name: 'didForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `تغيير كلمة المرور`
  String get changePassword {
    return Intl.message(
      'تغيير كلمة المرور',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء كلمة مرور جديدة`
  String get createNewPassword {
    return Intl.message(
      'إنشاء كلمة مرور جديدة',
      name: 'createNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `قم بإنشاء كلمة مرور جديدة لتسجيل الدخول`
  String get createPasswordToSignIn {
    return Intl.message(
      'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
      name: 'createPasswordToSignIn',
      desc: '',
      args: [],
    );
  }

  /// `تم تغيير الباسورد بنجاح`
  String get passwordChangedSuccessfully {
    return Intl.message(
      'تم تغيير الباسورد بنجاح',
      name: 'passwordChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `كلمتا السر غير متطبقتان يا معلم\nحاول تدخل 2 متطابقين كده بتكلم بجد...`
  String get passwordsDontMatchFunny {
    return Intl.message(
      'كلمتا السر غير متطبقتان يا معلم\nحاول تدخل 2 متطابقين كده بتكلم بجد...',
      name: 'passwordsDontMatchFunny',
      desc: '',
      args: [],
    );
  }

  /// `التحقق من الرمز`
  String get verifyCode {
    return Intl.message(
      'التحقق من الرمز',
      name: 'verifyCode',
      desc: '',
      args: [],
    );
  }

  /// `إعادة إرسال الرمز`
  String get resendCode {
    return Intl.message(
      'إعادة إرسال الرمز',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `لا تقلق، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.`
  String get phoneVerificationMessage {
    return Intl.message(
      'لا تقلق، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
      name: 'phoneVerificationMessage',
      desc: '',
      args: [],
    );
  }

  /// `أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي: {email}`
  String enterCodeSentToEmail(Object email) {
    return Intl.message(
      'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي: $email',
      name: 'enterCodeSentToEmail',
      desc: '',
      args: [email],
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

  /// `رقم البطاقة مطلوب`
  String get cardNumberIsRequired {
    return Intl.message(
      'رقم البطاقة مطلوب',
      name: 'cardNumberIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `رقم البطاقة غير صالح`
  String get invalidCardNumber {
    return Intl.message(
      'رقم البطاقة غير صالح',
      name: 'invalidCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `فشل في التحقق من رقم البطاقة:`
  String get cardNumberValidationFailure {
    return Intl.message(
      'فشل في التحقق من رقم البطاقة:',
      name: 'cardNumberValidationFailure',
      desc: '',
      args: [],
    );
  }

  /// `رمز التحقق مطلوب`
  String get cvvRequired {
    return Intl.message(
      'رمز التحقق مطلوب',
      name: 'cvvRequired',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن يتكون رمز التحقق من 3 أو 4 أرقام`
  String get cvvMustBe3or4Digits {
    return Intl.message(
      'يجب أن يتكون رمز التحقق من 3 أو 4 أرقام',
      name: 'cvvMustBe3or4Digits',
      desc: '',
      args: [],
    );
  }

  /// `رمز التحقق غير صالح`
  String get invalidCvv {
    return Intl.message(
      'رمز التحقق غير صالح',
      name: 'invalidCvv',
      desc: '',
      args: [],
    );
  }

  /// `فشل في التحقق من رمز التحقق:`
  String get cvvValidationFailure {
    return Intl.message(
      'فشل في التحقق من رمز التحقق:',
      name: 'cvvValidationFailure',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ الانتهاء مطلوب`
  String get expireDateRequired {
    return Intl.message(
      'تاريخ الانتهاء مطلوب',
      name: 'expireDateRequired',
      desc: '',
      args: [],
    );
  }

  /// `استخدم التنسيق MM/YY`
  String get expireDateWrongFormat {
    return Intl.message(
      'استخدم التنسيق MM/YY',
      name: 'expireDateWrongFormat',
      desc: '',
      args: [],
    );
  }

  /// `انتهت صلاحية البطاقة`
  String get cardExpired {
    return Intl.message(
      'انتهت صلاحية البطاقة',
      name: 'cardExpired',
      desc: '',
      args: [],
    );
  }

  /// `فشل في التحقق من تاريخ الانتهاء:`
  String get expireDateValidationError {
    return Intl.message(
      'فشل في التحقق من تاريخ الانتهاء:',
      name: 'expireDateValidationError',
      desc: '',
      args: [],
    );
  }

  /// `الرئيسية`
  String get home {
    return Intl.message(
      'الرئيسية',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `صباح الخير!..`
  String get goodMorning {
    return Intl.message(
      'صباح الخير!..',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `الأكثر مبيعًا`
  String get bestSellers {
    return Intl.message(
      'الأكثر مبيعًا',
      name: 'bestSellers',
      desc: '',
      args: [],
    );
  }

  /// `الأكثر طلبًا`
  String get mostSold {
    return Intl.message(
      'الأكثر طلبًا',
      name: 'mostSold',
      desc: '',
      args: [],
    );
  }

  /// `عروض عيدية`
  String get eidOffers {
    return Intl.message(
      'عروض عيدية',
      name: 'eidOffers',
      desc: '',
      args: [],
    );
  }

  /// `تصفيه`
  String get clearance {
    return Intl.message(
      'تصفيه',
      name: 'clearance',
      desc: '',
      args: [],
    );
  }

  /// `تسوق الآن`
  String get shopNow {
    return Intl.message(
      'تسوق الآن',
      name: 'shopNow',
      desc: '',
      args: [],
    );
  }

  /// `منتجاتنا`
  String get ourProducts {
    return Intl.message(
      'منتجاتنا',
      name: 'ourProducts',
      desc: '',
      args: [],
    );
  }

  /// `موصي بها`
  String get recommended {
    return Intl.message(
      'موصي بها',
      name: 'recommended',
      desc: '',
      args: [],
    );
  }

  /// `ابحث`
  String get search {
    return Intl.message(
      'ابحث',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `البحث`
  String get search2 {
    return Intl.message(
      'البحث',
      name: 'search2',
      desc: '',
      args: [],
    );
  }

  /// `ابحث عن.......`
  String get searchFor {
    return Intl.message(
      'ابحث عن.......',
      name: 'searchFor',
      desc: '',
      args: [],
    );
  }

  /// `عمليات البحث الأخيرة`
  String get recentSearches {
    return Intl.message(
      'عمليات البحث الأخيرة',
      name: 'recentSearches',
      desc: '',
      args: [],
    );
  }

  /// `نتائج البحث`
  String get searchResults {
    return Intl.message(
      'نتائج البحث',
      name: 'searchResults',
      desc: '',
      args: [],
    );
  }

  /// `لا توجد نتائج بحث`
  String get noSearchResults {
    return Intl.message(
      'لا توجد نتائج بحث',
      name: 'noSearchResults',
      desc: '',
      args: [],
    );
  }

  /// `نتائج`
  String get results {
    return Intl.message(
      'نتائج',
      name: 'results',
      desc: '',
      args: [],
    );
  }

  /// `حذف الكل`
  String get clearAll {
    return Intl.message(
      'حذف الكل',
      name: 'clearAll',
      desc: '',
      args: [],
    );
  }

  /// `عذرًا... المعلومات غير متاحة حاليًا`
  String get infoUnavailable {
    return Intl.message(
      'عذرًا... المعلومات غير متاحة حاليًا',
      name: 'infoUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `تصنيف حسب :`
  String get filterBy {
    return Intl.message(
      'تصنيف حسب :',
      name: 'filterBy',
      desc: '',
      args: [],
    );
  }

  /// `ترتيب حسب :`
  String get sortBy {
    return Intl.message(
      'ترتيب حسب :',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `عرض المزيد`
  String get more {
    return Intl.message(
      'عرض المزيد',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `المزيد`
  String get more2 {
    return Intl.message(
      'المزيد',
      name: 'more2',
      desc: '',
      args: [],
    );
  }

  /// `المنتجات`
  String get products {
    return Intl.message(
      'المنتجات',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `السعر :`
  String get price {
    return Intl.message(
      'السعر :',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `إلى`
  String get to {
    return Intl.message(
      'إلى',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `أضف الي السلة`
  String get addToCart {
    return Intl.message(
      'أضف الي السلة',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `السلة`
  String get cart {
    return Intl.message(
      'السلة',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `سلة التسوق`
  String get shoppingCart {
    return Intl.message(
      'سلة التسوق',
      name: 'shoppingCart',
      desc: '',
      args: [],
    );
  }

  /// `لديك منتجات في سلة التسوق`
  String get itemsInCart {
    return Intl.message(
      'لديك منتجات في سلة التسوق',
      name: 'itemsInCart',
      desc: '',
      args: [],
    );
  }

  /// `مراجعة`
  String get review {
    return Intl.message(
      'مراجعة',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `ملخص`
  String get summary {
    return Intl.message(
      'ملخص',
      name: 'summary',
      desc: '',
      args: [],
    );
  }

  /// `الملخص`
  String get summary2 {
    return Intl.message(
      'الملخص',
      name: 'summary2',
      desc: '',
      args: [],
    );
  }

  /// `المراجعة`
  String get checkoutReview {
    return Intl.message(
      'المراجعة',
      name: 'checkoutReview',
      desc: '',
      args: [],
    );
  }

  /// `ملخص الطلب :`
  String get orderSummary {
    return Intl.message(
      'ملخص الطلب :',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `يرجى تأكيد طلبك`
  String get confirmOrder {
    return Intl.message(
      'يرجى تأكيد طلبك',
      name: 'confirmOrder',
      desc: '',
      args: [],
    );
  }

  /// `يرجي تأكيد  طلبك`
  String get pleaseConfirmOrder {
    return Intl.message(
      'يرجي تأكيد  طلبك',
      name: 'pleaseConfirmOrder',
      desc: '',
      args: [],
    );
  }

  /// `الإجمالي الجزئي:`
  String get subtotal {
    return Intl.message(
      'الإجمالي الجزئي:',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `المجموع الفرعي :`
  String get subtotal2 {
    return Intl.message(
      'المجموع الفرعي :',
      name: 'subtotal2',
      desc: '',
      args: [],
    );
  }

  /// `رسوم التوصيل:`
  String get delivery {
    return Intl.message(
      'رسوم التوصيل:',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `الإجمالي`
  String get total {
    return Intl.message(
      'الإجمالي',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `الشحن`
  String get shipping {
    return Intl.message(
      'الشحن',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `الدفع`
  String get payment {
    return Intl.message(
      'الدفع',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `الدفع`
  String get pay {
    return Intl.message(
      'الدفع',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `لديك {count} منتجات في سله التسوق`
  String cartProductsCount(Object count) {
    return Intl.message(
      'لديك $count منتجات في سله التسوق',
      name: 'cartProductsCount',
      desc: '',
      args: [count],
    );
  }

  /// `طريقة الدفع`
  String get paymentMethod {
    return Intl.message(
      'طريقة الدفع',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `وسيلة الدفع`
  String get paymentMethod2 {
    return Intl.message(
      'وسيلة الدفع',
      name: 'paymentMethod2',
      desc: '',
      args: [],
    );
  }

  /// `المدفوعات`
  String get payments {
    return Intl.message(
      'المدفوعات',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `اختر وسيلة الدفع المناسبة:`
  String get choosePayment {
    return Intl.message(
      'اختر وسيلة الدفع المناسبة:',
      name: 'choosePayment',
      desc: '',
      args: [],
    );
  }

  /// `أختار طريقه الدفع المناسبه :`
  String get choosePaymentMethod {
    return Intl.message(
      'أختار طريقه الدفع المناسبه :',
      name: 'choosePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `يرجى اختيار وسيلة الدفع المناسبة لك.`
  String get pleaseChoosePayment {
    return Intl.message(
      'يرجى اختيار وسيلة الدفع المناسبة لك.',
      name: 'pleaseChoosePayment',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك اختر طريقه الدفع المناسبه لك.`
  String get pleaseChoosePaymentMethod {
    return Intl.message(
      'من فضلك اختر طريقه الدفع المناسبه لك.',
      name: 'pleaseChoosePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `أضف وسيلة دفع جديده`
  String get addPaymentMethod {
    return Intl.message(
      'أضف وسيلة دفع جديده',
      name: 'addPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `اضافه بطاقه جديده`
  String get addNewCard {
    return Intl.message(
      'اضافه بطاقه جديده',
      name: 'addNewCard',
      desc: '',
      args: [],
    );
  }

  /// `الدفع عند الاستلام`
  String get cashOnDelivery {
    return Intl.message(
      'الدفع عند الاستلام',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `اجعل البطاقة الافتراضية`
  String get makeDefaultCard {
    return Intl.message(
      'اجعل البطاقة الافتراضية',
      name: 'makeDefaultCard',
      desc: '',
      args: [],
    );
  }

  /// `جعل البطاقة افتراضية`
  String get setAsDefaultCard {
    return Intl.message(
      'جعل البطاقة افتراضية',
      name: 'setAsDefaultCard',
      desc: '',
      args: [],
    );
  }

  /// `اسم حامل البطاقه`
  String get cardHolderName {
    return Intl.message(
      'اسم حامل البطاقه',
      name: 'cardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `رقم البطاقة`
  String get cardNumber {
    return Intl.message(
      'رقم البطاقة',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ الصلاحيه`
  String get expiryDate {
    return Intl.message(
      'تاريخ الصلاحيه',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `رمز الأمان`
  String get cvv {
    return Intl.message(
      'رمز الأمان',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `عنوان التوصيل`
  String get deliveryAddress {
    return Intl.message(
      'عنوان التوصيل',
      name: 'deliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `العنوان`
  String get address {
    return Intl.message(
      'العنوان',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `المدينه`
  String get city {
    return Intl.message(
      'المدينه',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `رقم الطابق , رقم الشقه ..`
  String get floorApartment {
    return Intl.message(
      'رقم الطابق , رقم الشقه ..',
      name: 'floorApartment',
      desc: '',
      args: [],
    );
  }

  /// `حفظ العنوان`
  String get saveAddress {
    return Intl.message(
      'حفظ العنوان',
      name: 'saveAddress',
      desc: '',
      args: [],
    );
  }

  /// `الاستلام من الفرع`
  String get pickup {
    return Intl.message(
      'الاستلام من الفرع',
      name: 'pickup',
      desc: '',
      args: [],
    );
  }

  /// `التسليم من المكان`
  String get pickup2 {
    return Intl.message(
      'التسليم من المكان',
      name: 'pickup2',
      desc: '',
      args: [],
    );
  }

  /// `طلباتي`
  String get myOrders {
    return Intl.message(
      'طلباتي',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `رقم الطلب: 1245789663#`
  String get orderNumber {
    return Intl.message(
      'رقم الطلب: 1245789663#',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `تتبع الطلب`
  String get trackOrder {
    return Intl.message(
      'تتبع الطلب',
      name: 'trackOrder',
      desc: '',
      args: [],
    );
  }

  /// `عدد الطلبات`
  String get numberOfOrders {
    return Intl.message(
      'عدد الطلبات',
      name: 'numberOfOrders',
      desc: '',
      args: [],
    );
  }

  /// `تم إكمال الخطوات!`
  String get stepsCompleted {
    return Intl.message(
      'تم إكمال الخطوات!',
      name: 'stepsCompleted',
      desc: '',
      args: [],
    );
  }

  /// `الملف الشخصي`
  String get profile {
    return Intl.message(
      'الملف الشخصي',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `حسابي`
  String get myAccount {
    return Intl.message(
      'حسابي',
      name: 'myAccount',
      desc: '',
      args: [],
    );
  }

  /// `المعلومات الشخصية`
  String get personalInfo {
    return Intl.message(
      'المعلومات الشخصية',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `المفضلة`
  String get favorites {
    return Intl.message(
      'المفضلة',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `عام`
  String get general {
    return Intl.message(
      'عام',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `عام`
  String get generalTitle {
    return Intl.message(
      'عام',
      name: 'generalTitle',
      desc: '',
      args: [],
    );
  }

  /// `الصلاحيه`
  String get generalSubTitle {
    return Intl.message(
      'الصلاحيه',
      name: 'generalSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `اللغة`
  String get language {
    return Intl.message(
      'اللغة',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get arabic {
    return Intl.message(
      'العربية',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `الوضع`
  String get theme {
    return Intl.message(
      'الوضع',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `الإشعارات`
  String get notifications {
    return Intl.message(
      'الإشعارات',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `الاشعارات`
  String get notificationsTitle {
    return Intl.message(
      'الاشعارات',
      name: 'notificationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `انت أساسًا في شاشة الاشعارات يا معلم...`
  String get alreadyInNotifications {
    return Intl.message(
      'انت أساسًا في شاشة الاشعارات يا معلم...',
      name: 'alreadyInNotifications',
      desc: '',
      args: [],
    );
  }

  /// `تحديد الكل كمقروء`
  String get markAllRead {
    return Intl.message(
      'تحديد الكل كمقروء',
      name: 'markAllRead',
      desc: '',
      args: [],
    );
  }

  /// `جديد`
  String get neww {
    return Intl.message(
      'جديد',
      name: 'neww',
      desc: '',
      args: [],
    );
  }

  /// `في وقت سابق`
  String get earlier {
    return Intl.message(
      'في وقت سابق',
      name: 'earlier',
      desc: '',
      args: [],
    );
  }

  /// `المساعدة`
  String get help {
    return Intl.message(
      'المساعدة',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `من نحن`
  String get aboutUs {
    return Intl.message(
      'من نحن',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `اكتب التعليق..`
  String get typeComment {
    return Intl.message(
      'اكتب التعليق..',
      name: 'typeComment',
      desc: '',
      args: [],
    );
  }

  /// `الكلي`
  String get total2 {
    return Intl.message(
      'الكلي',
      name: 'total2',
      desc: '',
      args: [],
    );
  }

  /// `التوصيل :`
  String get delivery2 {
    return Intl.message(
      'التوصيل :',
      name: 'delivery2',
      desc: '',
      args: [],
    );
  }

  /// `هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص`
  String get loremWarning {
    return Intl.message(
      'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص',
      name: 'loremWarning',
      desc: '',
      args: [],
    );
  }

  /// `هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.`
  String get loremWarning1 {
    return Intl.message(
      'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.',
      name: 'loremWarning1',
      desc: '',
      args: [],
    );
  }

  /// `هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص.`
  String get loremWarning2 {
    return Intl.message(
      'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص.',
      name: 'loremWarning2',
      desc: '',
      args: [],
    );
  }

  /// `هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.`
  String get loremWarning3 {
    return Intl.message(
      'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.',
      name: 'loremWarning3',
      desc: '',
      args: [],
    );
  }

  /// `هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.`
  String get loremWarning4 {
    return Intl.message(
      'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.',
      name: 'loremWarning4',
      desc: '',
      args: [],
    );
  }

  /// `هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.`
  String get loremWarning5 {
    return Intl.message(
      'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.',
      name: 'loremWarning5',
      desc: '',
      args: [],
    );
  }

  /// `العنوان مطلوب`
  String get addressIsRequired {
    return Intl.message(
      'العنوان مطلوب',
      name: 'addressIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `العنوان قصير جدًا (الحد الأدنى 10 أحرف)`
  String get addressTooShort {
    return Intl.message(
      'العنوان قصير جدًا (الحد الأدنى 10 أحرف)',
      name: 'addressTooShort',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن يحتوي العنوان على حروف`
  String get addressMustContainLetters {
    return Intl.message(
      'يجب أن يحتوي العنوان على حروف',
      name: 'addressMustContainLetters',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن يحتوي العنوان على رقم واحد على الأقل`
  String get addressMustContainNumber {
    return Intl.message(
      'يجب أن يحتوي العنوان على رقم واحد على الأقل',
      name: 'addressMustContainNumber',
      desc: '',
      args: [],
    );
  }

  /// `لا يمكن أن يحتوي العنوان على رموز فقط`
  String get addressOnlySymbols {
    return Intl.message(
      'لا يمكن أن يحتوي العنوان على رموز فقط',
      name: 'addressOnlySymbols',
      desc: '',
      args: [],
    );
  }

  /// `فشل في التحقق من العنوان:`
  String get addressValidationFailure {
    return Intl.message(
      'فشل في التحقق من العنوان:',
      name: 'addressValidationFailure',
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
