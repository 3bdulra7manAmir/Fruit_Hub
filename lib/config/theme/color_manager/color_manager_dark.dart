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
  /// [_60A77F]
  Color get kGreen001 => const Color(0xff60A77F);

  // Red Color Range
  @override
  /// [_D92C20]
  Color get kRed001 => const Color(0xffD92C20);
  

  // Yellow Color Range
  /// [FFDE00]
  @override
  Color get kYellow001 => const Color(0xFFF3E3A4);
}