import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/listview_builder.dart';
import '../../../../../core/widgets/popers/modal_bottom_sheet.dart';
import 'current_order_cart.dart';

class OrderTrackingTimeLineWidget extends StatelessWidget
{
  const OrderTrackingTimeLineWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 2,
      padding: EdgeInsets.zero,
      separatorBuilder: (_, __) => Sizes.s0.verticalSpace,
      itemBuilder: (context, index)
      {
        return Container(
          color: AppColors.color.kGrey016,
          padding: AppPadding.directional.orderTimeLine,
          child: Column(
            children:
            [
              Sizes.s20.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Column(
                    children:
                    [
                      OrderIconWidget(),
                      Container(width: 2, height: 90.h, color: AppColors.color.kGrey020),
                    ],
                  ),
                  Sizes.s24.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text("تتبع الطلب", style: AppStyles.extraLight(fontWeight: AppFontWeights.boldWeight, fontColor: AppColors.color.kBlack004)),
                      Text("22 مارس , 2024", style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),),
                      Sizes.s21.verticalSpace,
                      ModalSheetDragger(color: AppColors.color.kGrey021, height: 2.h, width: 90.w,),
                    ],
                  ),
                ],
              ),
              
            ],
          ),
        );
      },
    );
  }
}
