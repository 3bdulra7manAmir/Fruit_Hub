import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
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
      appBar: CustomAppBar(title: S.current.bestSellers, isNotifications: true,),
      body: CustomSingleChild(
        children:
        [
          Sizes.s24.verticalSpace,
          MostSoldWidget(title: S.current.bestSellers, isShowMore: false,),
          Sizes.s8.verticalSpace,
          const FruitGridListWidget(),
          Sizes.s16.verticalSpace,
        ],
      ),
    );
  }
}