import 'package:e_commerce_app/core/widgets/appbar.dart';
import 'package:e_commerce_app/core/widgets/column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../widget/track_order/current_order_cart.dart';
import '../widget/track_order/order_tracking_time_line.dart';

class TrackOrder extends StatelessWidget
{
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "تتبع الطلب"),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          CurrentOrderWidget(),
          Sizes.s19.verticalSpace,
          OrderTrackingTimeLineWidget(),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}