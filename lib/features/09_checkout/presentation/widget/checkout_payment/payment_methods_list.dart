import 'package:e_commerce_app/core/widgets/listview_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import 'payment_method_card.dart';

class PaymentMethodsListWidget extends StatelessWidget
{
  const PaymentMethodsListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => PaymentMethodCardWidget(),
      separatorBuilder: (context, index) => Sizes.s16.horizontalSpace,
      itemCount: 8,
    );
  }
}