import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/margin.dart';
import '../../../domain/entity/fruit_entity.dart';
import 'add_button.dart';
import 'favourite_img.dart';
import 'fruit_img.dart';
import 'fruit_price.dart';

class FruitGridCardWidget extends StatelessWidget {
  const FruitGridCardWidget({super.key, required this.fruit});
  final FruitEntity fruit;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.color.kGrey008,
      shape: RoundedRectangleBorder(
        borderRadius: AppRadiuses.circular.xXXXXSmall,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Sizes.s8.verticalSpace,
          const FavouriteWidget(),
          Expanded(child: FruitImgWidget(imageUrl: fruit.imageUrl)),
          Sizes.s12.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: FruitGridPriceWidget(
                  name: fruit.name,
                  price: fruit.price,
                ),
              ),
              const FruitAddButtonWidget(),
            ],
          ),
          Sizes.s20.verticalSpace,
        ],
      ).marginSymmetric(horizontal: 8.w),
    );
  }
}



class FruitAddButtonWidget extends StatelessWidget
{
  const FruitAddButtonWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {log('Add has been Pressed...');},
      child: FruitAddButton(
        child: SvgPicture.asset(AppAssets.icons.crossWhite, 
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(AppColors.color.kWhite001, BlendMode.srcIn),
        ),
      ),
    );
  }
}

