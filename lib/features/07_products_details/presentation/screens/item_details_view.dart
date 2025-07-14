import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/column.dart';
import '../widget/add_to_cart_button.dart';
import '../widget/fruit_description.dart';
import '../widget/fruit_health_info1.dart';
import '../widget/fruit_health_info2.dart';
import '../widget/fruit_item_widget.dart';
import '../widget/fruit_quantity.dart';
import '../widget/fruit_rating.dart';

class ItemDetails extends StatelessWidget
{
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const FruitItemWidget(),
            Sizes.s24.verticalSpace,
            CustomColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                const FruitNeededQuantityWidget(),
                Sizes.s8.verticalSpace,
                const FruitItemRatingWidget(),
                Sizes.s8.verticalSpace,
                const FruitItemDescriptionWidget(),
                Sizes.s16.verticalSpace,
                const FruitHealthInfo1Widget(),
                Sizes.s16.verticalSpace,
                const FruitHealthInfo2Widget(),
                Sizes.s24.verticalSpace,
                const AddToCartButtonWidget(),
                Sizes.s16.verticalSpace,
              ]
            ),
          ],
        ),
      ),
    );
  }
}