import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/fruit_grid_list.dart';
import '../widget/most_sold.dart';


class MorePopular extends StatelessWidget
{
  const MorePopular ({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(barTitle: "الأكثر مبيعًا", isNotifications: true,),
      body: CustomSingleChild(
        children:
        [
          Sizes.s24.verticalSpace,
          const MostSoldWidget(isMoreEnabled: false,),
          Sizes.s8.verticalSpace,
          const FruitGridListWidget(),
          Sizes.s16.verticalSpace,
        ],
      ),
    );
  }
}