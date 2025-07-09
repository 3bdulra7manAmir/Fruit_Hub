import 'dart:developer';
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';

class FruitGridCardWidget extends StatelessWidget
{
  const FruitGridCardWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: AppRadiuses.circular.xSmall,
      child: Card(
        color: AppColors.color.kGrey008,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size8.verticalSpace,
            const BlackHartWidget(),
            Expanded(child: const WatermelonWidget(),),
            Sizes.size12.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Expanded(child: PriceWidget()),
                const AddButtonWidget(),
              ],
            ),
            Sizes.size8.verticalSpace, // bottom padding
          ],
        ).marginSymmetric(horizontal: 8.w),
      ),
    );
  }
}

class BlackHartWidget extends StatelessWidget
{
  const BlackHartWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {log("Favourit Has been Pressed...");},
      child: SvgPicture.asset(AppAssets.icons.hartBlack),
    );
  }
}

class WatermelonWidget extends StatelessWidget
{
  const WatermelonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Image.asset(AppAssets.imgs.watermelon, fit: BoxFit.contain, height: double.infinity,),
    );
  }
}


class PriceWidget extends StatelessWidget
{
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Text("بطيخ", style: AppStyles.semiBold(fontColor: AppColors.color.kBlack001,), maxLines: 1,),
        Sizes.size4.verticalSpace,
        Row(
          children:
          [
            Flexible(
              child: Text("20جنية ", style: AppStyles.semiBold(fontColor: AppColors.color.kOrange001,), maxLines: 1,),
            ),
            Flexible(
              child: Text("/ الكيلو", style: AppStyles.semiBold(fontColor: AppColors.color.kOrange002,), maxLines: 1,),
            ),
          ],
        ),
      ],
    );
  }
}


class AddButtonWidget extends StatelessWidget
{
  const AddButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {log("Add has been Pressed...");},
      child: SvgPicture.asset(AppAssets.icons.addGreen),
    );
  }
}
