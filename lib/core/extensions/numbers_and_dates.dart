import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/i18n/localization/localization_controller.dart';


extension PriceFormatter on double {
  String toCleanString()
  {
    if (this % 1 == 0)
    {
      return toInt().toString();
    }
    return toString();
  }
}


extension NumbersFormatter on String? {
  String? localizedNumbers(WidgetRef ref) {
    if (this == null) return null;

    final locale = ref.read(localizationProvider);

    const arabicMap = {
      '0': '٠',
      '1': '١',
      '2': '٢',
      '3': '٣',
      '4': '٤',
      '5': '٥',
      '6': '٦',
      '7': '٧',
      '8': '٨',
      '9': '٩',
    };

    const englishMap = {
      '٠': '0',
      '١': '1',
      '٢': '2',
      '٣': '3',
      '٤': '4',
      '٥': '5',
      '٦': '6',
      '٧': '7',
      '٨': '8',
      '٩': '9',
    };

    if (locale.languageCode == 'ar') {
      // Convert numbers from English to Arabic
      return this!.split('').map((c) => arabicMap[c] ?? c).join();
    } else {
      // Convert numbers from Arabic to English
      return this!.split('').map((c) => englishMap[c] ?? c).join();
    }
  }
}


extension MaskCardNumber on String {
  String get maskedCard {
    if (length <= 4) return this;
    final last4 = substring(length - 4);
    final stars = List.filled(length - 4, '*').join();
    return '$stars$last4';
  }

  String get maskedCardGrouped {
    final masked = maskedCard;
    final buffer = StringBuffer();
    for (var i = 0; i < masked.length; i++) {
      buffer.write(masked[i]);
      if ((i + 1) % 4 == 0 && i != masked.length - 1) {
        buffer.write(' ');
      }
    }
    return buffer.toString();
  }
}


