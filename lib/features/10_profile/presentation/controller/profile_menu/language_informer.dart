import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../core/services/localization/localization_controller.dart';

part 'language_informer.g.dart';

@riverpod
class LanguageInformer extends _$LanguageInformer
{
  @override
  bool build()
  {
    final currentLocale = ref.watch(localizationProvider);
    final isEnglish = currentLocale.languageCode == 'en';
    return isEnglish;
  }

  void setArabic()
  {
    state = false;
    ref.read(localizationProvider.notifier).setArabic();
  }

  void setEnglish()
  {
    state = true;
    ref.read(localizationProvider.notifier).setEnglish();
  }

  void toggleLanguage()
  {
    final isEnglish = state;
    if (isEnglish)
    {
      //log("state is: $state → setArabic()");
      setArabic();
    } else
    {
      //log("state is: $state → setEnglish()");
      setEnglish();
    }
  }
}

