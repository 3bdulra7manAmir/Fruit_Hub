import 'package:flutter/material.dart';
import 'color_manager_base.dart';


class LightColorScheme extends ColorManagerBase
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
  @override
  /// [_949D9E]
  Color get kGrey002 => const Color(0xff949D9E);
  @override
  /// [_E6E9EA]
  Color get kGrey003 => const Color(0xffE6E9EA);
  @override
  /// [_F9FAFA]
  Color get kGrey004 => const Color(0xffF9FAFA);
  @override
  /// [_DDDFDF]
  Color get kGrey005 => const Color(0xffDDDFDF);
  @override
  /// [_616A6B]
  Color get kGrey006 => const Color(0xff616A6B);
  
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
  @override
  /// [_2D9F5D]
  Color get kGreen004 => const Color(0xff2D9F5D);
  @override
  /// [_EEF8ED]
  Color get kGreen005 => const Color(0xffEEF8ED);

  // Orange Color Range
  @override
  /// [_F4A91F]
  Color get kOrange001 => const Color(0xffF4A91F);
  

  // Yellow Color Range
  /// [_FDF4E2]
  @override
  Color get kYellow001 => const Color(0xFFFDF4E2);
}