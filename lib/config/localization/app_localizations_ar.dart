// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get welcomeIn => 'مرحبًا بك في';

  @override
  String get error => 'خطأ';

  @override
  String get onBoardingDescription =>
      'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.';

  @override
  String get searchAndShop => 'ابحث وتسوق';

  @override
  String get onBoarding2Description =>
      'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية';

  @override
  String get startNow => 'ابدأ الان';
}
