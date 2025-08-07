import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'slider_line_controller.g.dart';

@riverpod
class PriceSlider extends _$PriceSlider
{
  @override
  RangeValues build()
  {
    return const RangeValues(0, 200);
  }

  void update(RangeValues values)
  {
    state = values;
  }
}
