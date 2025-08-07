import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/routes_extras.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/snackbar.dart';
import '../widget/fruit_grid_list.dart';
import '../widget/most_sold.dart';
import '../widget/offers_list.dart';
import '../widget/search_bar/search_bar_body.dart';


class Home extends StatelessWidget
{
  Home({super.key});
  
  final TextEditingController homeSearchController = TextEditingController();   

  @override
  Widget build(BuildContext context)
  {
    return CustomSingleChild(
      children:
      [
        Sizes.s16.verticalSpace,
        SearchBarWidget(
          controller: homeSearchController,
          searchIconOnTap: () {
            if (homeSearchController.text.isEmpty)
            {CustomSnackBar().show(context, 'البحث فاضي يا معلم');}
            else {AppRouter.router.pushSearchString(fruitName: homeSearchController.text);}
          },
          onSubmitted: (value){
            if (homeSearchController.text.isEmpty)
            {CustomSnackBar().show(context, 'البحث فاضي يا معلم');}
            else {AppRouter.router.pushSearchString(fruitName: homeSearchController.text);}
          },
        ),
        Sizes.s12.verticalSpace,
        SizedBox(height: 158.h, child: const OffersListWidget()),
        Sizes.s12.verticalSpace,
        const MostSoldWidget(isMoreEnabled: true,),
        Sizes.s8.verticalSpace,
        const FruitGridListWidget(),
        Sizes.s16.verticalSpace,
      ],
    );
  }
}


