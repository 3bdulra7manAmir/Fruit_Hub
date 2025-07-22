import 'package:flutter/material.dart';

extension ConditionalWidgetExtension on Widget
{
  Widget showIf(bool condition)
  {
    return condition ? this : const SizedBox.shrink();
  }
}
