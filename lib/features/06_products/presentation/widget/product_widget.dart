import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/cached_network_img.dart';

class FruitsProductsWidget extends StatelessWidget
{
  const FruitsProductsWidget ({super.key, required this.imgUrl, required this.title});

  final String imgUrl;
  final String title;

  @override
  Widget build(BuildContext context)
  {
    
    return Column(
      children:
      [
        Container(
          width: 64.w, height: 64.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: AppRadiuses.circular.large,
            color: AppColors.color.kGrey008
          ),
          child: CustomCachedNetworkImg(imgUrl: imgUrl),
        ),
        Sizes.s2.verticalSpace,
        Text(title, style: AppStyles.extraLight(fontColor: AppColors.color.kBlack001),)
      ],
    );
  }
}