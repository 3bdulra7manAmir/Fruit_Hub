import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/extensions/numbers_and_dates.dart';
import '../../../../core/widgets/column.dart';
import '../../../03_home/domain/entity/fruit_entity.dart';
import '../widget/item_details/add_to_cart_button.dart';
import '../widget/item_details/fruit_description.dart';
import '../widget/item_details/fruit_health_cards_grid.dart';
import '../widget/item_details/fruit_item_widget.dart';
import '../widget/item_details/fruit_quantity.dart';
import '../widget/item_details/fruit_rating.dart';

class ItemDetails extends ConsumerWidget
{
  const ItemDetails({super.key, required this.fruitEntity,});

  final FruitEntity fruitEntity;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Scaffold(
      body: CustomSingleChild(
        isMargin: false,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          FruitItemWidget(imgUrl: fruitEntity.imgUrl,),
          Sizes.s24.verticalSpace,
          CustomColumn(
            children:
            [
              FruitNeededQuantityWidget(itemName: fruitEntity.name, itemPrice: fruitEntity.price.toCleanString(),),
              Sizes.s8.verticalSpace,
              FruitItemRatingWidget(rateValue: fruitEntity.rateValue, usersCount: fruitEntity.rateUsersCount,),
              Sizes.s8.verticalSpace,
              FruitItemDescriptionWidget(fruitDescription: fruitEntity.rateDescription),
              Sizes.s16.verticalSpace,
              FruitHealthGridInfoWidget(fruitId: fruitEntity.fruitId,),
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