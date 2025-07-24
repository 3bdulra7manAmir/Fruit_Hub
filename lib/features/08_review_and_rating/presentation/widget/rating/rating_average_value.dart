import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class RatingAverageValueWidget extends StatelessWidget
{
  const RatingAverageValueWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const AverageRatingWidget(),
        Sizes.s20.verticalSpace,
        const RecommendationPrecentTextWidget(),
        Sizes.s4.verticalSpace,
        const RecommendedTextWidget(),
      ],
    );
  }
}


class AverageRatingWidget extends StatelessWidget
{
  const AverageRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SvgPicture.asset(AppAssets.icons.reviewStar),
        Sizes.s8.horizontalSpace,
        Text('4.5', style: AppStyles.extraLight(
          fontColor: AppColors.color.kBlack001, 
          fontWeight: AppFontWeights.boldWeight),
        ),
      ],
    );
  }
}


class RecommendationPrecentTextWidget extends StatelessWidget
{
  const RecommendationPrecentTextWidget({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text('88%', style: AppStyles.bold(
      fontWeight: AppFontWeights.regularWeight, 
      fontColor: AppColors.color.kBlack001),
    );
  }
}


class RecommendedTextWidget extends StatelessWidget
{
  const RecommendedTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Text('موصي بها', style: AppStyles.extraLight(
      fontWeight: AppFontWeights.regularWeight, 
      fontColor: AppColors.color.kBlack001),
    );
  }
}