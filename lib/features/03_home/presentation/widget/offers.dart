
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/custom_paint_clipper.dart';

class OffersWidget extends StatelessWidget
{
  const OffersWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      child: Stack(
        children: [FruitCardImageWidget(), FruitCardTextWidget(),]
      ),
    );
  }
}


class FruitCardImageWidget extends StatelessWidget
{
  const FruitCardImageWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Image.asset(AppAssets.imgs.fruitCard, height: 158.h, fit: BoxFit.cover,);
  }
}


class FruitCardTextWidget extends StatelessWidget
{
  const FruitCardTextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ClipPath(
      clipper: OfferWaveClipper(),
      child: Container(
        padding: AppPadding.directional.smallstart,
        width: 175.w,
        decoration: BoxDecoration(
          borderRadius: AppRadiuses.only.xSmall,
          color: AppColors.color.kGreen003,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size25.verticalSpace,
            Text("عروض العيد", style: AppStyles.semiBold(fontColor: AppColors.color.kWhite001, fontWeight: AppFontWeights.regularWeight),),
            Sizes.size8.verticalSpace,
            Row(
              children:
              [
                Text("خصم", style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
                Text(" ", style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
                Text("25%", style: AppStyles.extraBold(fontColor: AppColors.color.kWhite001),),
              ],
            ),
            Sizes.size8.verticalSpace,
            CustomButton(
              text: "تسوق الان",
              textStyle: AppStyles.semiBold(
                fontWeight: AppFontWeights.boldWeight,
                fontColor: AppColors.color.kGreen001,
              ),
              onPressed: ()
              {log("Shop Now Has been Pressed...");}, 
              backgroundColor: AppColors.color.kWhite001,
              borderRadius: AppRadiuses.circular.xXXSmall,
              width: 116.w, height: 32.h,
            ),
            Sizes.size30.verticalSpace,
          ],
        ),
      ),
    );
  }
}