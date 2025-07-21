import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../common_container.dart';

class CurrentOrderWidget extends StatelessWidget
{
  const CurrentOrderWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CommonContainerWidget(
      padding: AppPadding.directional.orderCard,
      child: Row(
        children:
        [
          OrderIconWidget(),
          Sizes.s16.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              OrderNumberTextWidget(),
              Sizes.s3.verticalSpace,
              OrderDateTextWidget(),
              Sizes.s6.verticalSpace,
              OrdersCountTextWidget(),
            ],
          )
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
    return Text("طلب رقم: 1234567#", style: AppStyles.extraLight(
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
    return Text("تم الطلب :22 مارس ,2024", style: AppStyles.light(
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
        Text("عدد الطلبات ", style: AppStyles.extraLight(
          fontWeight: AppFontWeights.regularWeight, 
          fontColor: AppColors.color.kGrey002),
        ),
        Text(": 10", style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
        Sizes.s15.horizontalSpace,
        Text("250 جنية", style: AppStyles.extraLight(
          fontWeight: AppFontWeights.boldWeight, 
          fontColor: AppColors.color.kBlack001),
        ),
      ],
    );
  }
}

