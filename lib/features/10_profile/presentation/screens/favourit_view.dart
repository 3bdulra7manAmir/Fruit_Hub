
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../../../03_home/presentation/widget/fruit_grid_list.dart';

class Favourit extends StatelessWidget
{
  const Favourit({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomAppBar(title: 'المفضلة',),
      body: CustomSingleChild(
        children:
        [
          Sizes.s24.verticalSpace,
          const FruitGridListWidget(),
        ]
      ),
    );
  }
}