import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class DontHaveAccountWidget extends StatelessWidget
{
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text("لا تمتلك حساب؟", style: AppStyles.bold(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.semiBoldWeight),),
        Text(" ", style: AppStyles.bold(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.semiBoldWeight),),
        GestureDetector(
          onTap: ()
          {
            log("Create Account Pressed...");
            AppRouter.router.pushNamed(AppRoutes.register);
          },
          child: Text("قم بإنشاء حساب", style: AppStyles.bold(fontColor: AppColors.color.kGreen001, fontWeight: AppFontWeights.semiBoldWeight),)
        ),
      ],
    );
  }
}