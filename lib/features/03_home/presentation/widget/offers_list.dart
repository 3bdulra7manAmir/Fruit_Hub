import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/custom_listview_builder.dart';
import 'offers.dart';

class OffersListWidget extends StatelessWidget
{
  const OffersListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemBuilder: (context, index) => OffersWidget(),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
      itemCount: 4,
      scrollDirection: Axis.horizontal,
    );
  }
}