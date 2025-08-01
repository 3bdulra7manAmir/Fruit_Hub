import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/divider.dart';
import '../common_container.dart';

class OrderSummaryWidget extends StatelessWidget
{
  const OrderSummaryWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CommonContainerWidget(
      padding: AppPadding.symmetric.totalOrderCard,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          const SubTotalTextWidget(),
          Sizes.s8.verticalSpace,
          const DeliveryCostTextWidget(),
          Sizes.s8.verticalSpace,
          CustomDivider(color: AppColors.color.kGrey019, endIndent: Sizes.s32.w, indent: Sizes.s32.w,),
          Sizes.s8.verticalSpace,
          const TotalCostTextWidget(),
        ],
      ),
    );
  }
}


class SubTotalTextWidget extends StatelessWidget
{
  const SubTotalTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.s2.horizontalSpace,
        Text(S.current.subtotal2, style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight),),
        const Spacer(),
        Text('150 ${S.current.le}', style: AppStyles.bold(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kBlack001),),
        Sizes.s2.horizontalSpace,
      ],
    );
  }
}


class DeliveryCostTextWidget extends StatelessWidget
{
  const DeliveryCostTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(S.current.delivery2, style: AppStyles.extraLight(fontWeight: AppFontWeights.regularWeight),),
        const Spacer(),
        Text('30 ${S.current.le}', style: AppStyles.extraLight(),),
        Sizes.s20.horizontalSpace,
      ],
    );
  }
}


class TotalCostTextWidget extends StatelessWidget
{
  const TotalCostTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.s2.horizontalSpace,
        Text(S.current.total2, style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        const Spacer(),
        Text('180 ${S.current.le}', style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        Sizes.s2.horizontalSpace,
      ],
    );
  }
}

