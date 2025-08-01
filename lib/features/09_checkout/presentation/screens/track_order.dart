import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
import '../../../../core/widgets/column.dart';
import '../widget/track_order/current_order_cart.dart';
import '../widget/track_order/time_line_list.dart';

class TrackOrder extends StatelessWidget
{
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(title: S.current.trackOrder),
      body: CustomSingleChild(
        children:
        [
          Sizes.s16.verticalSpace,
          const CurrentOrderWidget(isDownArrow: false,),
          Sizes.s19.verticalSpace,
          Container(
            color: AppColors.color.kGrey016,
            padding: AppPadding.directional.orderTimeLine,
            child: const OrderTimeLineListWidget()
          ),
          Sizes.s16.verticalSpace,
        ]
      ),
    );
  }
}