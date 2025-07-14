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

  /// 5px horizontal
  EdgeInsets get xXXXSmall => EdgeInsets.symmetric(horizontal: 5.w);

  /// 16px horizontal 8px vertical
  EdgeInsets get xXXSmall => EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);
  
  /// 16px horizontal 8px vertical
  EdgeInsets get xXSmall => EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);

  /// 10px horizontal
  EdgeInsets get xSmall => EdgeInsets.symmetric(vertical: 10.w);

  /// 16px horizontal 12px vertical
  EdgeInsets get notificationsCard => EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h);

}


class Directional
{
  Directional._();

  /// 25px from start
  EdgeInsetsDirectional get offerText => EdgeInsetsDirectional.only(start: 25.w,);

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
