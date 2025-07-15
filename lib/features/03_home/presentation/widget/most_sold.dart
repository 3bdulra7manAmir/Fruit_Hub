import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_styles.dart';

class MostSoldWidget extends StatelessWidget
{
  const MostSoldWidget({super.key, required this.isMoreEnabled});
  final bool isMoreEnabled;

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
          child: isMoreEnabled ?
          Text("المزيد", style: AppStyles.extraLight(
            fontColor: AppColors.color.kGrey002,
            fontWeight: AppFontWeights.regularWeight,
            ),
          ) : const SizedBox.shrink(),
        ),
      ],
    );
  }
}