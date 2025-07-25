import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/widget_iterator.dart';

class OtherOptionsWidget extends StatelessWidget
{
  const OtherOptionsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        ...[
          GestureDetector(
            onTap: () {
              log('Google');
            },
            child: OtherOptionCardWidget(text: 'تسجيل بواسطة جوجل',  logo: AppAssets.icons.google,)
          ),
          GestureDetector(
            onTap: () {
              log('Apple');
            },
            child: OtherOptionCardWidget(text: 'تسجيل بواسطة أبل',  logo: AppAssets.icons.apple,)
          ),
          GestureDetector(
            onTap: () {
              log('Facebook');
            },
            child: OtherOptionCardWidget(text: 'تسجيل بواسطة فيسبوك',  logo: AppAssets.icons.facebook,)
          ),
        ].addSeparator(child: Sizes.s16.verticalSpace),
      ],
    );
  }
}

class OtherOptionCardWidget extends StatelessWidget
{
  const OtherOptionCardWidget({
    super.key, 
    required this.text, 
    required this.logo, 
    this.height, 
    this.width});

  final double? height;
  final double? width;
  final String text;
  final String logo;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: height ?? 56.h, width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: AppColors.color.kWhite001,
        borderRadius: AppRadiuses.circular.medium,
        border: Border.all(color: AppColors.color.kGrey005)
      ),
      child: Row(
        children:
        [
          Sizes.s18.horizontalSpace,
          SvgPicture.asset(logo),
          Sizes.s53.horizontalSpace,
          Text(text, style: AppStyles.bold(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.semiBoldWeight),),
        ],
      ),
    );
  }
}