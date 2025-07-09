import 'dart:developer';

import 'package:e_commerce_app/config/theme/color_manager/colors.dart';
import 'package:e_commerce_app/config/theme/font_manager/font_weights.dart';
import 'package:e_commerce_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';

class MostSoldWidget extends StatelessWidget
{
  const MostSoldWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text("الأكثر مبيعًا", style: AppStyles.bold(fontColor: AppColors.color.kBlack001),),
        GestureDetector(
          onTap: ()
          {
            log("More has been Pressed...");
            AppRouter.router.pushNamed(AppRoutes.mostSold);
          },
          child: Text("المزيد", style: AppStyles.semiBold(
            fontColor: AppColors.color.kGrey002,
            fontWeight: AppFontWeights.regularWeight,
            ),
          ),
        ),
      ],
    );
  }
}