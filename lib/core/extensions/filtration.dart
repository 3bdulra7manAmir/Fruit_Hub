import '../../config/i18n/generated/l10n.dart';
import '../../features/06_products/presentation/widget/sort_modal_sheet/radio_card.dart';

extension SingingCharacterExtension on SingingCharacter
{
  String get title
  {
    switch (this)
    {
      case SingingCharacter.low2Hight:
        return S.current.sortLowToHigh;
      case SingingCharacter.hight2Low:
        return S.current.sortHighToLow;
      case SingingCharacter.alpha:
        return S.current.sortAlphabetical;
    }
  }
}
