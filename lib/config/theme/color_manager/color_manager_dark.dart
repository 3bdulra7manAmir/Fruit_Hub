import 'package:flutter/material.dart';
import 'color_manager_base.dart';


class DarkColorScheme extends ColorManagerBase
{
  @override
  /// [Transparent]
  Color get kTransparent => Colors.transparent;

  // White Color Range
  @override
  /// [FFFFFF]
  Color get kWhite001 => const Color(0xffFFFFFF);

  // Grey Color Range
  @override
  /// [_4E5556]
  Color get kGrey001 => const Color(0xff4E5556);

  
  // Black Color Range
  @override
  /// [_0C0D0D]
  Color get kBlack001 => const Color(0xff0C0D0D);
  
  
  // Green Color Range
  @override
  /// [_1B5E37]
  Color get kGreen001 => const Color(0xff1B5E37);
  @override
  /// [_B0E8C7]
  Color get kGreen002 => const Color(0xffB0E8C7);
  @override
  /// [_5DB957]
  Color get kGreen003 => const Color(0xff5DB957);

  // Orange Color Range
  @override
  /// [_F4A91F]
  Color get kOrange001 => const Color(0xffF4A91F);
  

  // Yellow Color Range
  /// [FFDE00]
  @override
  Color get kYellow001 => const Color(0xFFF3E3A4);
}