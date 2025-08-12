import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/extensions/numbers_and_dates.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../03_home/domain/entity/fruit_entity.dart';
import '../../data/model/rating_and_description_model.dart';
import '../../domain/usecases/fetch_rating_and_description_usecase.dart';
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
    final ratings = ref.watch(fetchRatingAndDescriptionUsecaseProvider);
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
              FruitItemRatingWidget(id: fruitEntity.fruitId,),
              Sizes.s8.verticalSpace,
              ratings.when(
                data: (rate)
                {
                  final rating = rate.firstWhere(
                    (r) => r.ratingId == fruitEntity.fruitId,
                    orElse: () => const RatingAndDescriptionModel(
                      ratingId: '',  ratingDescription: '', usersCount: '', value: 0,
                    ),
                  );

                  final decsriptionValue = rating.ratingDescription;
                  return FruitItemDescriptionWidget(fruitDescription: decsriptionValue);
                }, 
                loading: () => const SizedBox.shrink(),
                error: (error, stack) => CustomErrorWidget(error: error),
              ),
              
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