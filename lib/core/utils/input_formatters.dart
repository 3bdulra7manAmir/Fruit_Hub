import 'package:flutter/services.dart';

abstract class AppInputFormatters
{
  AppInputFormatters._();

  static List<TextInputFormatter> get digitsOnly => [FilteringTextInputFormatter.digitsOnly];
  static List<TextInputFormatter> get lettersOnly => [_FullNameFormatter()];
}

class _FullNameFormatter extends TextInputFormatter
{
  static final _regExp = RegExp(r'^[a-zA-Z\u0600-\u06FF]* ?[a-zA-Z\u0600-\u06FF]*$');

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue)
  {
    final newText = newValue.text;

    if (_regExp.hasMatch(newText))
    {
      // Only allow one space
      final spaceCount = ' '.allMatches(newText).length;
      if (spaceCount <= 1)
      {
        return newValue;
      }
    }
    return oldValue; // Reject changes if invalid
  }
}
