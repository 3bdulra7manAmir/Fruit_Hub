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
  @override
  /// [CACECE66]
  Color get kWhite002 => const Color.fromRGBO(202, 206, 206, 0.4);

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
  @override
  /// [_D9D9D9]
  Color get kGrey007 => const Color(0xffD9D9D9);
  @override
  /// [_F3F5F7]
  Color get kGrey008 => const Color(0xffF3F5F7);
  @override
  /// [_323232]
  Color get kGrey009 => const Color(0xff323232);
  
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
  @override
  /// [_EBF9F1]
  Color get kGreen006 => const Color(0xffEBF9F1);

  // Orange Color Range
  @override
  /// [_F4A91F]
  Color get kOrange001 => const Color(0xffF4A91F);
  @override
  /// [_F8C76D]
  Color get kOrange002 => const Color(0xffF8C76D);
  

  // Yellow Color Range
  /// [FFDE00]
  @override
  Color get kYellow001 => const Color(0xFFF3E3A4);

  // Red Color Range
  /// [EB5757]
  @override
  Color get kRed001 => const Color(0xFFEB5757);
}