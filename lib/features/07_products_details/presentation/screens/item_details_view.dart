import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/column.dart';
import '../widget/item_details/add_to_cart_button.dart';
import '../widget/item_details/fruit_description.dart';
import '../widget/item_details/fruit_health_cards_grid.dart';
import '../widget/item_details/fruit_item_widget.dart';
import '../widget/item_details/fruit_quantity.dart';
import '../widget/item_details/fruit_rating.dart';

class ItemDetails extends StatelessWidget
{
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: CustomSingleChild(
        isMargin: false,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          const FruitItemWidget(),
          Sizes.s24.verticalSpace,
          CustomColumn(
            children:
            [
              const FruitNeededQuantityWidget(),
              Sizes.s8.verticalSpace,
              const FruitItemRatingWidget(),
              Sizes.s8.verticalSpace,
              const FruitItemDescriptionWidget(),
              Sizes.s16.verticalSpace,
              const FruitHealthGridInfoWidget(),
              Sizes.s24.verticalSpace,
              const AddToCartButtonWidget(),
              Sizes.s24.verticalSpace,
            ]
          ),
        ],
      ),
    );
  }
}