import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/router/routes_extras.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/numbers_and_dates.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/snackbar.dart';
import '../../../03_home/presentation/widget/fruit_grid_list.dart';
import '../../../03_home/presentation/widget/search_bar/search_bar_body.dart';
import '../widget/our_products.dart';

class FilteredProducts extends StatelessWidget
{
  FilteredProducts({super.key});

  final TextEditingController filterController = TextEditingController(); 

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.products, isNotifications: true, isCustomBack: false,),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          SearchBarWidget(
            controller: filterController,
            searchIconOnTap: () {
              if (filterController.text.isEmpty)
              {CustomSnackBar().show(context, S.current.emptySearch);}
              else {AppRouter.router.pushSearchString(fruitName: filterController.text);}
            },
            onSubmitted: (value) {
              if (filterController.text.isEmpty)
              {CustomSnackBar().show(context, S.current.emptySearch);}
              else {AppRouter.router.pushSearchString(fruitName: filterController.text);}
            }
          ),
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

class FilteredResultsCountWidget extends ConsumerWidget
{
  const FilteredResultsCountWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Text('${4.toString().localizedNumbers(ref)} ${S.current.results}', style: AppStyles.bold(fontColor: AppColors.color.kBlack001),);
  }
}