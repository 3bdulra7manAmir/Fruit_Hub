import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../widget/most_sold.dart';
import '../widget/offers_list.dart';
import '../widget/search_bar.dart';
import '../widget/user_appbar.dart';
import '../../../../core/widgets/custom_column.dart';


class Home extends StatelessWidget
{
  const Home({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: UserAppBar(),
      body: CustomColumn(
        children:
        [
          Sizes.size16.verticalSpace,
          SearchBarWidget(),
          Sizes.size12.verticalSpace,
          SizedBox(height: 342.h, child: OffersListWidget()),
          Sizes.size12.verticalSpace,
          MostSoldWidget(),
          Sizes.size8.verticalSpace,
        ],
      ),
    );
  }
}


