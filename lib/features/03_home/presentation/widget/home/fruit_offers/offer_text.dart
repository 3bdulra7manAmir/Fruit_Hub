import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/widgets/paint_clipper.dart';
import 'shop_now_button.dart';

class OfferTextWidget extends StatelessWidget
{
  const OfferTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ClipPath(
      clipper: OfferWaveClipper(),
      child: Container(
        padding: AppPadding.directional.smallstart,
        width: 175.w,
        decoration: BoxDecoration(borderRadius: AppRadiuses.only.xSmall, color: AppColors.color.kGreen003,),
        child: FruitCardWidget(),
      ),
    );
  }
}


class FruitCardWidget extends StatelessWidget
{
  const FruitCardWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Sizes.s25.verticalSpace,
        Text("عروض العيد", style: AppStyles.semiBold(fontColor: AppColors.color.kWhite001, fontWeight: AppFontWeights.regularWeight),),
        Sizes.s8.verticalSpace,
        Row(
          children:
          [
            Text("خصم", style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
            Text(" ", style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
            Text("25%", style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
          ],
        ),
        Sizes.s8.verticalSpace,
        ShopNowButtonWidget(),
        Sizes.s30.verticalSpace,
      ],
    );
  }
}
