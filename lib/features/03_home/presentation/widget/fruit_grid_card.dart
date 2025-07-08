import 'dart:developer';

import 'package:e_commerce_app/core/constants/app_borders.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:e_commerce_app/core/extensions/widget_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';

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
          mainAxisSize: MainAxisSize.min,
          children:
          [
            Sizes.size8.verticalSpace,
            GestureDetector(
              onTap: ()
              {
                log("Favourit Has been Pressed...");
              },
              child: SvgPicture.asset("assets/icons/Home/Heart_Black.svg")
            ),
            Image.asset("assets/imgs/Home/Watermelon.png"),
            Sizes.size24.verticalSpace,
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text("بطيخ", style: AppStyles.semiBold(fontColor: AppColors.color.kBlack001,),),
                    Sizes.size4.verticalSpace,
                    Row(
                      children:
                      [
                        Text("20جنية", style: AppStyles.semiBold(fontColor: AppColors.color.kOrange001,),),
                        Text(" / الكيلو", style: AppStyles.semiBold(fontColor: AppColors.color.kOrange002,),),
                      ],
                    ),
                  ],
                ),
                Sizes.size23.horizontalSpace,
                GestureDetector(
                  onTap: ()
                  {
                    log("Add has been Pressed...");
                  },
                  child: SvgPicture.asset("assets/icons/Home/Add_Green.svg"),
                )
              ],
            ),
            Sizes.size20.verticalSpace
          ],
        ).marginSymmetric(horizontal: 8.w),
      ),
    );
  }
}