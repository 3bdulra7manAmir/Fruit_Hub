import 'dart:developer';
import 'package:e_commerce_app/config/theme/color_manager/colors.dart';
import 'package:e_commerce_app/core/constants/app_borders.dart';
import 'package:e_commerce_app/core/constants/app_images.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:e_commerce_app/core/widgets/appbar.dart';
import 'package:e_commerce_app/core/widgets/column.dart';
import 'package:e_commerce_app/core/widgets/listview_builder.dart';
import 'package:e_commerce_app/features/03_home/presentation/widget/fruit_grid_list.dart';
import 'package:e_commerce_app/features/03_home/presentation/widget/most_sold.dart';
import 'package:e_commerce_app/features/03_home/presentation/widget/search_bar/search_bar_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';

class Products extends StatelessWidget
{
  const Products({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: "المنتجات", isNotifications: true, isCustomBack: false,),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children:
          [
            Sizes.s16.verticalSpace,
            SearchBarWidget(onSubmitted: (value) {log("Search Bar Value: $value");},),
            Sizes.s16.verticalSpace,
            OurProductsWidget(),
            Sizes.s8.verticalSpace,
            SizedBox(height: 89.h, child: ProductsFruitsListWidget()),
            Sizes.s24.verticalSpace,
            MostSoldWidget(isMoreEnabled: true),
            Sizes.s8.verticalSpace,
            FruitGridListWidget(),
          ]
        ),
      ),
    );
  }
}


class OurProductsWidget extends StatelessWidget
{
  const OurProductsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text("منتجاتنا", style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        GestureDetector(
          onTap: () {log("Arrows Has been Pressed...");},
          child: Container(
            height: 31.h, width: 44.w, alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: AppRadiuses.circular.xXXXSmall,
              border: Border.all(color: AppColors.color.kWhite002),
              color: AppColors.color.kWhite001,
            ), child: SvgPicture.asset(AppAssets.icons.swapArrows),
          ),
        ),
      ],
    );
  }
}


class ProductsFruitsListWidget extends StatelessWidget
{
  const ProductsFruitsListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 8, scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => FruitsProductsWidget(),
      separatorBuilder: (context, index) => Sizes.s9.horizontalSpace,
    );
  }
}


class FruitsProductsWidget extends StatelessWidget
{
  const FruitsProductsWidget ({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Container(
          width: 64.w, height: 64.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: AppRadiuses.circular.large,
            color: AppColors.color.kGrey008
          ),
          child: Image.asset(AppAssets.icons.avocado),
        ),
        Sizes.s2.verticalSpace,
        Text("افوكادو", style: AppStyles.semiBold(fontColor: AppColors.color.kBlack001),)
      ],
    );
  }
}


