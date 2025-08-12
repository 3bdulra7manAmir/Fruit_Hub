import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/widgets/shimmer.dart';


class RatingAmountShimmer extends StatelessWidget
{
  const RatingAmountShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      width: 20.w,
      height: 14.h,
      borderRadius: AppRadiuses.circular.small,
      baseColor: AppColors.color.kGrey005,
      highlightColor: AppColors.color.kGrey002,
    );
  }
}


class RatingsCountShimmer extends StatelessWidget
{
  const RatingsCountShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      width: 40.w,
      height: 14.h,
      borderRadius: AppRadiuses.circular.small,
      baseColor: AppColors.color.kGrey005,
      highlightColor: AppColors.color.kGrey002,
    );
  }
}
