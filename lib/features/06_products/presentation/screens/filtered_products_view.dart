import 'dart:developer';

import 'package:e_commerce_app/config/theme/color_manager/colors.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:e_commerce_app/features/03_home/presentation/widget/fruit_grid_list.dart';
import 'package:e_commerce_app/features/03_home/presentation/widget/search_bar/search_bar_body.dart';
import 'package:e_commerce_app/features/06_products/presentation/widget/our_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';

class FilteredProducts extends StatelessWidget
{
  const FilteredProducts({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: "المنتجات", isNotifications: true, isCustomBack: false,),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomColumn(
          children:
          [
            Sizes.s16.verticalSpace,
            SearchBarWidget(onSubmitted: (value){log(value);}),
            Sizes.s16.verticalSpace,
            const FilteredResultsTitleWidget(),
            Sizes.s16.verticalSpace,
            const FruitGridListWidget(),
          ]
        ),
      ),
    );
  }
}

class FilteredResultsTitleWidget extends StatelessWidget
{
  const FilteredResultsTitleWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        FilteredResultsCountWidget(),
        FiltrationArrowsWidget()
      ],
    );
  }
}

class FilteredResultsCountWidget extends StatelessWidget
{
  const FilteredResultsCountWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text("4 نتائج", style: AppStyles.bold(fontColor: AppColors.color.kBlack001),);
  }
}