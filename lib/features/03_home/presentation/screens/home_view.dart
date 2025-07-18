import 'dart:developer';
import 'package:e_commerce_app/config/router/route_extras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../core/constants/app_sizes.dart';
import '../widget/fruit_grid_list.dart';
import '../widget/most_sold.dart';
import '../widget/offers_list.dart';
import '../widget/search_bar/search_bar_body.dart';
import '../widget/user_appbar/user_appbar_body.dart';
import '../../../../core/widgets/column.dart';


class Home extends StatelessWidget
{
  const Home({super.key});
  

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const UserAppBar(),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          SearchBarWidget(
            onSubmitted: (value)
            {
              log("Search Field Value is => $value");
              AppRouter.router.pushSearchString(fruitName: value);
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
      ),
      //bottomNavigationBar: CustomNavBarWidget(),
    );
  }
}


