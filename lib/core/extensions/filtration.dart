import '../../config/i18n/generated/l10n.dart';
import '../../features/06_products/presentation/controllers/sort_radio_controller.dart';

extension SingingCharacterExtension on SortOptions
{
  String get title
  {
    switch (this)
    {
      case SortOptions.lowToHigh:
        return S.current.sortLowToHigh;
      case SortOptions.highToLow:
        return S.current.sortHighToLow;
      case SortOptions.alphabetOrder:
        return S.current.sortAlphabetical;
    }
  }
}
