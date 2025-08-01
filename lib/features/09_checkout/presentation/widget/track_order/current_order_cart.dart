import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/divider.dart';
import '../../../../../core/widgets/popers/modal_bottom_sheet.dart';
import '../common_container.dart';

class CurrentOrderWidget extends StatelessWidget
{
  const CurrentOrderWidget({super.key, required this.isDownArrow});
  
  final bool isDownArrow;
  final bool isExpanded = true;

  @override
  Widget build(BuildContext context)
  {
    return CommonContainerWidget(
      padding: AppPadding.directional.orderCard,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              const OrderIconWidget(),
              Sizes.s16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  const OrderNumberTextWidget(),
                  Sizes.s3.verticalSpace,
                  const OrderDateTextWidget(),
                  Sizes.s6.verticalSpace,
                  const OrdersCountTextWidget(),
                ],
              ),
              if(isDownArrow)...
              [
                Sizes.s56.horizontalSpace,
                GestureDetector(
                  onTap: ()
                  {
                    
                  },
                  child: SvgPicture.asset(
                    isExpanded ? AppAssets.icons.upArrowBlack
                    : AppAssets.icons.downArrowBlack),
                ),
              ]
              else...[const SizedBox.shrink()]
            ],
          ),
          if(isExpanded)...
          [
            Sizes.s20.verticalSpace,
            CustomDivider(color: AppColors.color.kGrey021),
            Sizes.s3.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Column(
                  children:
                  [
                    Sizes.s3.verticalSpace,
                    Container(
                      width: 10.w, height: 10.h,
                      decoration: BoxDecoration(
                        color: AppColors.color.kGreen001,
                        borderRadius: AppRadiuses.circular.large,
                      ),
                    ),
                    CustomModalSheetDragger(
                      color: AppColors.color.kGreen009,
                      width: 2.w, height: 20.h,
                    ),
                  ],
                ),
                Sizes.s11.horizontalSpace,
                Text('تتبع الطلب', style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),),
                const Spacer(),
                Text('22 مارس , 2024', style: AppStyles.extraLight(fontColor: AppColors.color.kGrey002),)
              ],
            )
          ]
          else...[const SizedBox.shrink()]
        ],
      ),
    );
  }
}


class OrderIconWidget extends StatelessWidget
{
  const OrderIconWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.all.trackClosedOrder,
      alignment: Alignment.center, 
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.large,
        color: AppColors.color.kGreen006,
      ),child: SvgPicture.asset(AppAssets.icons.closedOrderBox),
    );
  }
}


class OrderNumberTextWidget extends StatelessWidget
{
  const OrderNumberTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('طلب رقم: 1234567#', style: AppStyles.extraLight(
      fontWeight: AppFontWeights.boldWeight,
      fontColor: AppColors.color.kBlack004,),
    );
  }
}


class OrderDateTextWidget extends StatelessWidget
{
  const OrderDateTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('تم الطلب :22 مارس ,2024', style: AppStyles.light(
      fontWeight: AppFontWeights.regularWeight,
      fontColor: AppColors.color.kGrey002,),
    );
  }
}


class OrdersCountTextWidget extends StatelessWidget
{
  const OrdersCountTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(S.current.numberOfOrders, style: AppStyles.extraLight(
          fontWeight: AppFontWeights.regularWeight, 
          fontColor: AppColors.color.kGrey002),
        ),
        Text(': 10', style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
        Sizes.s15.horizontalSpace,
        Text('250 ${S.current.le}', style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
      ],
    );
  }
}

