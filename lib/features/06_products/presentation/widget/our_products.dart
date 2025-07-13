import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_styles.dart';
import 'price_modal_sheet/price_modal_sheet.dart';

class OurProductsWidget extends StatelessWidget
{
  const OurProductsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text("منتجاتنا", style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        GestureDetector(
          onTap: () {
            log("Arrows Has been Pressed...");
            priceFilterSheet(context);
          },
          child: Container(
            height: 31.h, width: 44.w, alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: AppRadiuses.circular.xXXXSmall,
              border: Border.all(color: AppColors.color.kWhite002),
              color: AppColors.color.kWhite001,
            ), child: SvgPicture.asset(AppAssets.icons.swapArrows),
          ),
        ),
      ],
    );
  }
}
