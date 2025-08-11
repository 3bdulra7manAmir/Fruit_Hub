import 'package:flutter/material.dart';

extension AdaptiveTextStyle on TextStyle
{
  /// Modify style based on current system language (ar/en)
  TextStyle byLocale( {TextStyle? ar, TextStyle? en} )
  {
    final lang = WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    return lang == 'ar' ? (ar ?? this) : (en ?? this);
  }
}
