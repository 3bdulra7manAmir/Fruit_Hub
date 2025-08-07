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

  /// 17 all sides
  final EdgeInsets trackClosedOrder = const EdgeInsets.all(17);
  /// 6 all sides
  final EdgeInsets userCamera = const EdgeInsets.all(6);
}


class Symmetric
{
  Symmetric._();

  /// 5px horizontal
  EdgeInsets get dotsIndicator => EdgeInsets.symmetric(horizontal: 5.w);

  /// 16px horizontal 8px vertical
  EdgeInsets get xXXSmall => EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);
  
  /// 16px horizontal 8px vertical
  EdgeInsets get xXSmall => EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);

  /// 10px horizontal
  EdgeInsets get xSmall => EdgeInsets.symmetric(vertical: 10.w);

  /// 16px horizontal 12px vertical
  EdgeInsets get notificationsCard => EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h);

  /// 2px horizontal 15px vertical
  EdgeInsets get totalOrderCard => EdgeInsets.symmetric(horizontal: 2.w, vertical: 15.h);

  /// 9px horizontal 5px vertical
  EdgeInsets get confirmPaymentMethod => EdgeInsets.symmetric(horizontal: 9.w, vertical: 5.h);

  /// 4px horizontal 5px vertical
  EdgeInsets get addressCard => EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.h);

}


class Directional
{
  Directional._();

  /// 25px from start
  EdgeInsetsDirectional get offerText => EdgeInsetsDirectional.only(start: 25.w,);

  /// top: 19px, bottom: 19px, start 10px, end: 10px
  EdgeInsetsDirectional get orderCard => EdgeInsetsDirectional.only(
    top: 19.h, 
    bottom: 19.h, 
    end: 5.w,
    start: 5.w
  );

  EdgeInsetsDirectional get orderTimeLine => EdgeInsetsDirectional.only(
    top: 20.h, 
    bottom: 20.h, 
    end: 60.w, 
    start: 30.w
  );

  EdgeInsetsDirectional get logOutCard => EdgeInsetsDirectional.only(
    top: 10.h, 
    bottom: 10.h, 
    end: 49.w, 
    start: 114.w
  );

  EdgeInsetsDirectional get ordersHistoryCard => EdgeInsetsDirectional.only(
    top: 19.h, 
    bottom: 19.h, 
    end: 32.w, 
  );

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
