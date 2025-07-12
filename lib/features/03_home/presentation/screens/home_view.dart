import 'dart:developer';
import 'package:e_commerce_app/config/router/app_router_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../core/constants/app_sizes.dart';
import '../widget/home/fruit_grid_list.dart';
import '../widget/home/most_sold.dart';
import '../widget/home/offers_list.dart';
import '../widget/home/search_bar/search_bar_body.dart';
import '../widget/home/user_appbar/user_appbar_body.dart';
import '../../../../core/widgets/column.dart';


class Home extends StatelessWidget
{
  const Home({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: UserAppBar(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 158.h, child: OffersListWidget()),
            Sizes.s12.verticalSpace,
            MostSoldWidget(),
            Sizes.s8.verticalSpace,
            FruitGridListWidget(),
            Sizes.s16.verticalSpace,
          ],
        ),
      ),
    );
  }
}


