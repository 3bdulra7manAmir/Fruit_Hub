import 'package:flutter/material.dart';


abstract class ColorManagerBase
{
  /// [Transparent]
  Color get kTransparent;

  // White Color Range
  /// [FFFFFF]
  Color get kWhite001;

  // Grey Color Range
  /// [_4E5556]
  Color get kGrey001;
  /// [_949D9E]
  Color get kGrey002;
  /// [_E6E9EA]
  Color get kGrey003;
  /// [_F9FAFA]
  Color get kGrey004;
  /// [_DDDFDF]
  Color get kGrey005;

  // Black Color Range
  /// [_0C0D0D]
  Color get kBlack001;

  // Green Color Range
  /// [_1B5E37]
  Color get kGreen001;
  /// [_B0E8C7]
  Color get kGreen002;
  /// [_5DB957]
  Color get kGreen003;
  /// [_2D9F5D]
  Color get kGreen004;

  // Orange Color Range
  /// [_F4A91F]
  Color get kOrange001;

  // Yellow Color Range
  /// [FFDE00]
  Color get kYellow001;

}