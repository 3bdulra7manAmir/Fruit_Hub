import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppPadding
{
  AppPadding._();
  static final all = All._();
  static final symmetric = Symmetric._();
  static final directional = Directional._();
  static final single = Single._();
  static final special = Special._();
}


class All
{
  All._();

  /// 2 all sides
  final EdgeInsets smallAll = const EdgeInsets.all(2);
}


class Symmetric
{
  Symmetric._();

  /// 2px horizontal
  EdgeInsets get xXXSmall => EdgeInsets.symmetric(horizontal: 5.w);

}


class Directional
{
  Directional._();

  /// 16px From End
  EdgeInsetsDirectional get smallEnd => EdgeInsetsDirectional.only(end: 16.w,);

}


class Single
{
  Single._();

  /// 30px left only
  EdgeInsets get largeLeft => EdgeInsets.only(left: 30.0.w);
}


class Special
{
  Special._();

  /// Zero padding
  final EdgeInsets zero = EdgeInsets.zero;
}
