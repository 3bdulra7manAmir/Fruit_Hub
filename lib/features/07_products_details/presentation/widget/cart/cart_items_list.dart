import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import 'cart_item_card_body.dart';

class CartItemsListWidget extends StatelessWidget
{
  const CartItemsListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemBuilder: (context, index) => SizedBox(height: 92.h, child: const CartCardWidget()),
      separatorBuilder: (context, index) => Sizes.s8.verticalSpace,
      itemCount: 3,
    );
  }
}