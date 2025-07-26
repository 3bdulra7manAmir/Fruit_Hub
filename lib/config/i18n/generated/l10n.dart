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

  /// `نسيت كلمة المرور`
  String get forgotPassword {
    return Intl.message(
      'نسيت كلمة المرور',
      name: 'forgotPassword',
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

  /// `سجّل حساب جديد`
  String get createAccount {
    return Intl.message(
      'سجّل حساب جديد',
      name: 'createAccount',
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

  /// `لديك حساب مسبقًا؟`
  String get alreadyHaveAccount {
    return Intl.message(
      'لديك حساب مسبقًا؟',
      name: 'alreadyHaveAccount',
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

  /// `الأكثر طلبًا`
  String get mostSold {
    return Intl.message(
      'الأكثر طلبًا',
      name: 'mostSold',
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

  /// `عروض عيدية`
  String get eidOffers {
    return Intl.message(
      'عروض عيدية',
      name: 'eidOffers',
      desc: '',
      args: [],
    );
  }

  /// `خصومات`
  String get discount {
    return Intl.message(
      'خصومات',
      name: 'discount',
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

  /// `ابحث`
  String get search {
    return Intl.message(
      'ابحث',
      name: 'search',
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

  /// `عمليات البحث الأخيرة`
  String get recentSearches {
    return Intl.message(
      'عمليات البحث الأخيرة',
      name: 'recentSearches',
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

  /// `نتائج البحث`
  String get searchResults {
    return Intl.message(
      'نتائج البحث',
      name: 'searchResults',
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

  /// `تحديد الكل كمقروء`
  String get markAllRead {
    return Intl.message(
      'تحديد الكل كمقروء',
      name: 'markAllRead',
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

  /// `السعر:`
  String get price {
    return Intl.message(
      'السعر:',
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

  /// `حفظ العنوان`
  String get saveAddress {
    return Intl.message(
      'حفظ العنوان',
      name: 'saveAddress',
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

  /// `اجعل البطاقة الافتراضية`
  String get makeDefaultCard {
    return Intl.message(
      'اجعل البطاقة الافتراضية',
      name: 'makeDefaultCard',
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

  /// `عنوان التوصيل`
  String get deliveryAddress {
    return Intl.message(
      'عنوان التوصيل',
      name: 'deliveryAddress',
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

  /// `يرجى تأكيد طلبك`
  String get confirmOrder {
    return Intl.message(
      'يرجى تأكيد طلبك',
      name: 'confirmOrder',
      desc: '',
      args: [],
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

  /// `ملخص الطلب:`
  String get orderSummary {
    return Intl.message(
      'ملخص الطلب:',
      name: 'orderSummary',
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

  /// `الدفع عند الاستلام`
  String get cashOnDelivery {
    return Intl.message(
      'الدفع عند الاستلام',
      name: 'cashOnDelivery',
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

  /// `تمت العملية بنجاح!`
  String get success {
    return Intl.message(
      'تمت العملية بنجاح!',
      name: 'success',
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

  /// `تغيير كلمة المرور`
  String get changePassword {
    return Intl.message(
      'تغيير كلمة المرور',
      name: 'changePassword',
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

  /// `عام`
  String get general {
    return Intl.message(
      'عام',
      name: 'general',
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

  /// `تسجيل الخروج`
  String get logout {
    return Intl.message(
      'تسجيل الخروج',
      name: 'logout',
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

  /// `اللغة`
  String get language {
    return Intl.message(
      'اللغة',
      name: 'language',
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

  /// `المفضلة`
  String get favorites {
    return Intl.message(
      'المفضلة',
      name: 'favorites',
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

  /// `طلباتي`
  String get myOrders {
    return Intl.message(
      'طلباتي',
      name: 'myOrders',
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

  /// `الوضع`
  String get theme {
    return Intl.message(
      'الوضع',
      name: 'theme',
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
