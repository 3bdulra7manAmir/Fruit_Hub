import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../widget/home/fruit_grid_list.dart';
import '../widget/home/most_sold.dart';
import '../widget/home/offers_list.dart';
import '../widget/home/search_bar/search_bar_body.dart';
import '../widget/home/user_appbar/user_appbar_body.dart';
import '../../../../core/widgets/custom_column.dart';


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
            Sizes.size16.verticalSpace,
            SearchBarWidget(),
            Sizes.size12.verticalSpace,
            SizedBox(height: 158.h, child: OffersListWidget()),
            Sizes.size12.verticalSpace,
            MostSoldWidget(),
            Sizes.size8.verticalSpace,
            FruitGridListWidget(),
            Sizes.size16.verticalSpace,
          ],
        ),
      ),
    );
  }
}


