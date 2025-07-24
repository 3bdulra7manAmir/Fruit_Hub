import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../03_home/presentation/widget/fruit_grid_list.dart';
import '../../../03_home/presentation/widget/search_bar/search_bar_body.dart';
import '../widget/our_products.dart';

class FilteredProducts extends StatelessWidget
{
  const FilteredProducts({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(title: 'المنتجات', isNotifications: true, isCustomBack: false,),
      body: CustomSingleChild(
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
    return Text('4 نتائج', style: AppStyles.bold(fontColor: AppColors.color.kBlack001),);
  }
}