import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../03_home/presentation/widget/fruit_grid_list.dart';
import '../../../03_home/presentation/widget/most_sold.dart';
import '../../../03_home/presentation/widget/search_bar/search_bar_body.dart';
import '../widget/our_products.dart';
import '../widget/products_list.dart';


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
            SizedBox(height: 89.h, child: FruitsProductsListWidget()),
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

