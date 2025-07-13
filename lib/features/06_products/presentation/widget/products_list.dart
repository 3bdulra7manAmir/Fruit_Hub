import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import 'product_widget.dart';

class FruitsProductsListWidget extends StatelessWidget
{
  const FruitsProductsListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 8, scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const FruitsProductsWidget(),
      separatorBuilder: (context, index) => Sizes.s9.horizontalSpace,
    );
  }
}