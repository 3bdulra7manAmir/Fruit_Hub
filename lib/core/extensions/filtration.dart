import '../../features/06_products/presentation/widget/sort_modal_sheet/radio_card.dart';

extension SingingCharacterExtension on SingingCharacter
{
  String get title
  {
    switch (this)
    {
      case SingingCharacter.low2Hight:
        return 'السعر ( الأقل إلى الأعلى )';
      case SingingCharacter.hight2Low:
        return 'السعر ( الأعلى إلى الأقل )';
      case SingingCharacter.alpha:
        return 'الأبجدية';
    }
  }
}
