import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/custom_listview_builder.dart';
import 'fruit_offers/offers_body.dart';

class OffersListWidget extends StatelessWidget
{
  const OffersListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemBuilder: (context, index) => OffersBody(),
      separatorBuilder: (context, index) => Sizes.s8.horizontalSpace,
      itemCount: 7,
      scrollDirection: Axis.horizontal,
    );
  }
}