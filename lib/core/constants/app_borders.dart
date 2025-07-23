import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppRadiuses
{
  AppRadiuses._();

  static final only = BorderOnly._();
  static final circular = BorderCircular._();
}

class BorderOnly
{
  BorderOnly._();

}


class BorderCircular
{
  BorderCircular._();

  /// [circular: 2.r]
  BorderRadius get linearRatingBar => BorderRadius.circular(2.r);

  /// [circular: 4.r]
  BorderRadius get xXXXXSmall => BorderRadius.circular(4.r);

  /// [circular: 5.r]
  BorderRadius get noSearchResults => BorderRadius.circular(5.r);

  /// [circular: 6.r]
  BorderRadius get xXXSmall => BorderRadius.circular(6.r);

  /// [circular: 8.r]
  BorderRadius get xXSmall => BorderRadius.circular(8.r);

  /// [circular: 10.r]
  BorderRadius get xSmall => BorderRadius.circular(10.r);

  /// [circular: 12.r]
  BorderRadius get small => BorderRadius.circular(12.r);

  /// [circular: 16.r]
  BorderRadius get medium => BorderRadius.circular(16.r);

  /// [circular: 20.r]
  BorderRadius get xMedium => BorderRadius.circular(20.r);

  /// [circular: 30.r]
  BorderRadius get xXMedium => BorderRadius.circular(30.r);

  /// [circular: 50.r]
  BorderRadius get large => BorderRadius.circular(50.r);

  /// [circular: 100.r]
  BorderRadius get xLarge => BorderRadius.circular(100.r);

}


abstract class AppBorderWidth
{
  AppBorderWidth._();

  /// [small] → 2px
  static double get small => 2.0.w;
}