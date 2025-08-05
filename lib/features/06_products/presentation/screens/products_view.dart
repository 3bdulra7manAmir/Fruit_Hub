import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/routes_extras.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/column.dart';
import '../../../03_home/presentation/widget/fruit_grid_list.dart';
import '../../../03_home/presentation/widget/most_sold.dart';
import '../../../03_home/presentation/widget/search_bar/search_bar_body.dart';
import '../widget/our_products.dart';
import '../widget/products_list.dart';


class Products extends StatelessWidget
{
  Products({super.key});

  final TextEditingController productsSearchController = TextEditingController(); 

  @override
  Widget build(BuildContext context)
  {
    return CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          SearchBarWidget(
            controller: productsSearchController,
            onSubmitted: (value)
            {
              log('Search Bar Value: $value');
              AppRouter.router.pushSearchString(fruitName: value);
            },
          ),
          Sizes.s16.verticalSpace,
          const OurProductsWidget(),
          Sizes.s8.verticalSpace,
          SizedBox(height: 89.h, child: const FruitsProductsListWidget()),
          Sizes.s24.verticalSpace,
          const MostSoldWidget(isMoreEnabled: true),
          Sizes.s8.verticalSpace,
          const FruitGridListWidget(),
        ]
    );
  }
}

