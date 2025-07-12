import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import 'card.dart';

class NotificationsCardListWidget extends StatelessWidget
{
  const NotificationsCardListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 3,
      itemBuilder: (context, index) => const NotificationsCard(isGreen: false,),
      separatorBuilder: (context, index) => Sizes.s16.verticalSpace,
    );
  }
}