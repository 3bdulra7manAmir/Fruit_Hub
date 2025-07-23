// ignore_for_file: unused_import

import 'package:e_commerce_app/core/extensions/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';

class FruitAddButtonWidget extends StatelessWidget
{
  const FruitAddButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    //return SvgPicture.asset(AppAssets.icons.addGreen);
    final String img = AppAssets.icons.crossWhite.darkOrLight(
      context, dark: AppAssets.icons.crossBlack, light: AppAssets.icons.crossWhite);
    return Container(
      width: 36.w, height: 36.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.color.kGreen001,
        shape: BoxShape.circle,
      ),
      child: 
      SvgPicture.asset(img, fit: BoxFit.scaleDown,)
      ,
    );
  }
}
