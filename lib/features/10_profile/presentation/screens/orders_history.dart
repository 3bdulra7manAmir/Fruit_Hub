import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../09_checkout/presentation/widget/track_order/current_order_cart.dart';

class OrdersHistory extends StatelessWidget
{
  const OrdersHistory({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "طلباتي"),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          CurrentOrderWidget(isDownArrow: true,),
        ]
      ),
    );
  }
}