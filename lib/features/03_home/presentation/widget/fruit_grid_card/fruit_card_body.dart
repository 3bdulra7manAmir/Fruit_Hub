import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/margin.dart';
import '../../../../../core/widgets/buttons/add_button.dart';
import '../../../../07_products_details/presentation/controllers/cart_item_controller.dart';
import '../../../domain/entity/fruit_entity.dart';
import 'favourite_img.dart';
import 'fruit_img.dart';
import 'fruit_price.dart';

class FruitGridCardWidget extends StatelessWidget
{
  const FruitGridCardWidget({super.key, required this.fruit});
  final FruitEntity fruit;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kGrey008,
      shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXXXSmall,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Sizes.s8.verticalSpace,
          const FavouriteWidget(),
          Expanded(child: FruitImgWidget(imgUrl: fruit.imgUrl)),
          Sizes.s12.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              Expanded(child: FruitGridPriceWidget(name: fruit.name, price: fruit.price,),),
              Consumer(
                builder: (_, ref, _) => FruitAddButton(onTap: () =>
                {
                  ref.read(cartItemsProvider.notifier).addItem(fruit),
                  log('Fruit added to cart: ${fruit.name}'),
                },),
              ),
            ],
          ),
          Sizes.s20.verticalSpace,
        ],
      ).marginSymmetric(horizontal: 8.w),
    );
  }
}

